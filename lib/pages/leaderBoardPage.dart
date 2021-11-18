import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sporket/Utils/BaseUrl.dart';
import 'package:sporket/pages/leaderBpardPage1.dart';

import 'package:sporket/widgtes/nav_drawer.dart';
import 'package:http/http.dart' as http;

class LeaderBoardPage extends StatefulWidget {
  @override
  _LeaderBoardPage createState() => _LeaderBoardPage();
}

class _LeaderBoardPage extends State<LeaderBoardPage> {
  getContest() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    String url = BaseUrl.url + "events/myContest/";
    var response = await http
        .get(Uri.parse("$url"), headers: {"Authorization": "Bearer $token"});
    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body);
      return jsonObject["data"];
    } else {
      return FailureMessage(message: "No Contest Found").failedMessage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      body: FutureBuilder(
        future: getContest(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == null) {
              return Center(
                child: Text('No context found'),
              );
            } else {
              final list = snapshot.data as List;
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LeaderBoardPage1();
                          }));
                        },
                        child: Card(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 5),
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/i2.jpg')),
                            title: Text(
                              'FIFA',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'assets/imglogo.png',
                                    ),
                                    Text(
                                      list[index]['team1'],
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Vs',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'assets/imglogo.png',
                                    ),
                                    Text(list[index]['team2'],
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                      );
                    }),
              );
            }
          } else {
            return Center(child: CustomLoader().loadingIcon());
          }
        },
      ),
    );
  }
}
