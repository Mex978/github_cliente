import 'package:flutter/material.dart';
import 'BottomNavyBar.dart';
import 'PageHomeUser.dart';
import 'PageRepositoriesUser.dart';

class ProfileHome extends StatefulWidget {
  final String name, login;

  @override
  _ProfileHomeState createState() => _ProfileHomeState(this.name, this.login);
  ProfileHome(this.name, this.login);
}

class _ProfileHomeState extends State<ProfileHome> {
  _ProfileHomeState(this.name, this.login);
  String name, login;
  int _currentIndex = 0;

  final _controller = PageController(initialPage: 0);

  void pageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("$name ($login)"),
      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          PageHomeUser(),
          PageRepositoriesUser(),
          Container(
            color: Colors.red,
          )
        ],
        onPageChanged: (index) => pageChanged(index),
      ),
      bottomNavigationBar: BottomNavyBar(
        currentIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
            _controller.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.ease);
          });
        },
      ),
    );
  }
}
