import 'package:flutter/material.dart';
import 'package:github_client/Screens/ProfileHome.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

import 'package:github_client/Screens/Home.dart';

class ResultUserSearch extends StatefulWidget {
  final Map<String, dynamic> data;
  final String userSearchName;
  ResultUserSearch(this.userSearchName, this.data);

  @override
  _ResultUserSearchState createState() =>
      _ResultUserSearchState(this.userSearchName, this.data);
}

class _ResultUserSearchState extends State<ResultUserSearch> {
  Map<String, dynamic> data;
  String userSearchName;
  _ResultUserSearchState(this.userSearchName, this.data);
  final String url = "https://api.github.com/";

  Future<List<Map<String, dynamic>>> fetchUsersFromGitHub() async {
    List<Map<String, dynamic>> users = [];
    // Map userData;
    // for (var user in this.data["items"]) {
    //   http.Response response = await http.get(url + "users/" + user["login"]);
    //   userData = json.decode(response.body);
    //   if (!userData.containsKey("message")) users.add(userData);
    // }
    users.add({
      "login": "Mex978",
      "id": 31356610,
      "node_id": "MDQ6VXNlcjMxMzU2NjEw",
      "avatar_url": "https://avatars0.githubusercontent.com/u/31356610?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/Mex978",
      "html_url": "https://github.com/Mex978",
      "followers_url": "https://api.github.com/users/Mex978/followers",
      "following_url":
          "https://api.github.com/users/Mex978/following{/other_user}",
      "gists_url": "https://api.github.com/users/Mex978/gists{/gist_id}",
      "starred_url":
          "https://api.github.com/users/Mex978/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/Mex978/subscriptions",
      "organizations_url": "https://api.github.com/users/Mex978/orgs",
      "repos_url": "https://api.github.com/users/Mex978/repos",
      "events_url": "https://api.github.com/users/Mex978/events{/privacy}",
      "received_events_url":
          "https://api.github.com/users/Mex978/received_events",
      "type": "User",
      "site_admin": false,
      "name": "Max Lima",
      "company": null,
      "blog": "",
      "location": null,
      "email": null,
      "hireable": null,
      "bio":
          "Student of Computer Science at the Universidade Federal do Piauí - UFPI",
      "public_repos": 6,
      "public_gists": 0,
      "followers": 1,
      "following": 1,
      "created_at": "2017-08-25T19:25:43Z",
      "updated_at": "2019-09-03T13:24:41Z"
    });
    users.add({
      "login": "max",
      "id": 111631,
      "node_id": "MDQ6VXNlcjExMTYzMQ==",
      "avatar_url": "https://avatars0.githubusercontent.com/u/111631?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/max",
      "html_url": "https://github.com/max",
      "followers_url": "https://api.github.com/users/max/followers",
      "following_url":
          "https://api.github.com/users/max/following{/other_user}",
      "gists_url": "https://api.github.com/users/max/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/max/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/max/subscriptions",
      "organizations_url": "https://api.github.com/users/max/orgs",
      "repos_url": "https://api.github.com/users/max/repos",
      "events_url": "https://api.github.com/users/max/events{/privacy}",
      "received_events_url": "https://api.github.com/users/max/received_events",
      "type": "User",
      "site_admin": true,
      "name": "Max Schoening",
      "company": "GitHub",
      "blog": "https://max.wtf/",
      "location": "San Francisco, US",
      "email": null,
      "hireable": null,
      "bio":
          "Assistant to the assistant regional branch manager @github. Before @googlecloudplatform, @usecanvas, @heroku, and @cloudapp.",
      "public_repos": 158,
      "public_gists": 60,
      "followers": 296,
      "following": 82,
      "created_at": "2009-08-04T00:51:52Z",
      "updated_at": "2019-09-03T15:45:23Z"
    });
    users.add({
      "login": "tj",
      "id": 25254,
      "node_id": "MDQ6VXNlcjI1MjU0",
      "avatar_url": "https://avatars2.githubusercontent.com/u/25254?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/tj",
      "html_url": "https://github.com/tj",
      "followers_url": "https://api.github.com/users/tj/followers",
      "following_url": "https://api.github.com/users/tj/following{/other_user}",
      "gists_url": "https://api.github.com/users/tj/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/tj/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/tj/subscriptions",
      "organizations_url": "https://api.github.com/users/tj/orgs",
      "repos_url": "https://api.github.com/users/tj/repos",
      "events_url": "https://api.github.com/users/tj/events{/privacy}",
      "received_events_url": "https://api.github.com/users/tj/received_events",
      "type": "User",
      "site_admin": false,
      "name": "TJ Holowaychuk",
      "company": "Apex",
      "blog": "https://apex.sh",
      "location": "London, UK",
      "email": null,
      "hireable": null,
      "bio":
          "Founder of Apex\r\nhttps://apex.sh, a non-startup.\r\nmedium.com/@tjholowaychuk • twitter.com/tjholowaychuk • tjholowaychuk.com",
      "public_repos": 277,
      "public_gists": 544,
      "followers": 40837,
      "following": 46,
      "created_at": "2008-09-18T22:37:28Z",
      "updated_at": "2019-05-28T09:29:19Z"
    });
    users.add({
      "login": "GITenberg",
      "id": 1957667,
      "node_id": "MDEyOk9yZ2FuaXphdGlvbjE5NTc2Njc=",
      "avatar_url": "https://avatars0.githubusercontent.com/u/1957667?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/GITenberg",
      "html_url": "https://github.com/GITenberg",
      "followers_url": "https://api.github.com/users/GITenberg/followers",
      "following_url":
          "https://api.github.com/users/GITenberg/following{/other_user}",
      "gists_url": "https://api.github.com/users/GITenberg/gists{/gist_id}",
      "starred_url":
          "https://api.github.com/users/GITenberg/starred{/owner}{/repo}",
      "subscriptions_url":
          "https://api.github.com/users/GITenberg/subscriptions",
      "organizations_url": "https://api.github.com/users/GITenberg/orgs",
      "repos_url": "https://api.github.com/users/GITenberg/repos",
      "events_url": "https://api.github.com/users/GITenberg/events{/privacy}",
      "received_events_url":
          "https://api.github.com/users/GITenberg/received_events",
      "type": "Organization",
      "site_admin": false,
      "name": "GITenberg",
      "company": null,
      "blog": "https://www.gitenberg.org/",
      "location": null,
      "email": "gitenberg.project@gmail.com",
      "hireable": null,
      "bio": "a collaborative, trackable, scriptable digital library using Git",
      "public_repos": 58858,
      "public_gists": 0,
      "followers": 0,
      "following": 0,
      "created_at": "2012-07-11T16:21:11Z",
      "updated_at": "2016-02-19T16:04:44Z"
    });
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  (MaterialPageRoute(builder: (context) => Home())),
                  (_) => false);
            },
          ),
          title: Text("Resultados para ${this.userSearchName}"),
        ),
        body: Container(
          color: Color.fromRGBO(177, 178, 185, 100),
          child: Column(
            children: <Widget>[
              Expanded(
                child: FutureBuilder<List<Map<String, dynamic>>>(
                  future: fetchUsersFromGitHub(),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                      case ConnectionState.none:
                        return Container(
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(
                            strokeWidth: 5,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.green),
                          ),
                        );
                        break;
                      default:
                        if (snapshot.hasError)
                          return Container(
                            child: Text("Nada Encontrado!"),
                          );
                        else {
                          print(snapshot.data);
                          return ListView.builder(
                              padding: EdgeInsets.only(top: 5, bottom: 5),
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      child: RaisedButton(
                                          padding: EdgeInsets.all(20),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          color: Colors.white,
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                (MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProfileHome(
                                                            snapshot.data[index]
                                                                ["name"],
                                                            snapshot.data[index]
                                                                ["login"]))));
                                          },
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      snapshot.data[index]
                                                          ["avatar_url"]),
                                                  radius: 50),
                                              Expanded(
                                                child: Container(
                                                    // alignment: Alignment.topLeft,
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            10, 0, 0, 0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Container(
                                                          child: Text(
                                                            snapshot.data[index]
                                                                ["login"],
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        if (snapshot.data[index]
                                                                ["name"] !=
                                                            null)
                                                          Text(snapshot
                                                                  .data[index]
                                                              ["name"]),
                                                        Divider(
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                        if (snapshot.data[index]
                                                                ["bio"] !=
                                                            null)
                                                          Text(
                                                              snapshot.data[
                                                                  index]["bio"],
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                              maxLines: 3),
                                                        Divider(
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                        if (snapshot.data[index]
                                                                ["location"] !=
                                                            null)
                                                          Row(
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .location_on,
                                                                size: 15,
                                                              ),
                                                              Text(
                                                                  snapshot.data[
                                                                          index]
                                                                      [
                                                                      "location"],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold))
                                                            ],
                                                          ),
                                                        if (snapshot.data[index]
                                                                ["email"] !=
                                                            null)
                                                          Row(
                                                            children: <Widget>[
                                                              Icon(Icons.email,
                                                                  size: 15),
                                                              Text(
                                                                  snapshot.data[
                                                                          index]
                                                                      ["email"],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ],
                                                          ),
                                                        Divider(),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: <Widget>[
                                                            if (snapshot.data[
                                                                        index][
                                                                    "followers"] !=
                                                                null)
                                                              Text(
                                                                  "Followers: ${snapshot.data[index]["followers"]}"),
                                                            Divider(),
                                                            if (snapshot.data[
                                                                        index][
                                                                    "following"] !=
                                                                null)
                                                              Text(
                                                                  "Following: ${snapshot.data[index]["following"]}")
                                                          ],
                                                        )
                                                      ],
                                                    )),
                                              )
                                            ],
                                          )),
                                    ));
                              });
                        }
                    }
                  },
                ),
              )
            ],
          ),
        ));
  }
}
