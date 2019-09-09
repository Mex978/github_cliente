import 'package:flutter/material.dart';
import 'package:github_client/Screens/ResultUserSearch.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final request = "https://api.github.com/search/users?q=";
  var userFounded;
  bool isDisabled = false;
  bool ok = false;
  bool autovalidate = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController userController = TextEditingController();

  void autenticate() async {
    await http.get(
        'https://api.github.com/users/whatever?client_id=Iv1.1601e723196f104e&client_secret=d9577dc908f04fe10a6da81194d91a6c5de0a1f4');
  }

  @override
  void initState() {
    super.initState();
    autenticate();
  }

  void getData(String user) async {
    setState(() {
      isDisabled = true;
      autovalidate = true;
    });
    http.Response response = await http.get(request + "maxxxxxxxxxxxxxxxxxx");
    Map<String, dynamic> data = json.decode(response.body);
    print("Tamanho ==========> " + data["items"].length.toString());
    if (data.containsKey("message")) {
      if (data["message"] == "Not Found") {
        setState(() {
          isDisabled = false;
          userFounded = "Not Found";
        });
      }
    } else {
      setState(() {
        isDisabled = false;
        ok = true;
        userFounded = data;
      });
      Navigator.push(
          context,
          (MaterialPageRoute(
              builder: (context) =>
                  ResultUserSearch("maxxxxxxxxxxxxxxxxxx", data))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "GitHub",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Image.asset(
                      "images/Github.png",
                      height: 100,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        autovalidate: autovalidate,
                        validator: (value) =>
                            value.isEmpty ? "Insira um usuário!" : null,
                        controller: userController,
                        decoration: InputDecoration(
                            labelText: "Username",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    )),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 90,
                  child: RaisedButton(
                      color: Color.fromRGBO(47, 168, 40, 100),
                      child: isDisabled
                          ? CircularProgressIndicator()
                          : (ok
                              ? Icon(Icons.check, size: 30)
                              : Text(
                                  "Search",
                                )),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                      onPressed: () => !isDisabled
                          ? (_formKey.currentState.validate()
                              ? getData(userController.text)
                              : null)
                          : null),
                )
              ],
            ),
          ),
        ));
  }
}
