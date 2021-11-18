import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sporket/Utils/BaseUrl.dart';

import 'package:sporket/pages/notification_page.dart';
import 'package:sporket/pages/wallet.dart';
import 'package:http/http.dart' as http;

class Contest extends StatefulWidget {
  const Contest({Key? key}) : super(key: key);

  @override
  State<Contest> createState() => _ContestState();
}

class _ContestState extends State<Contest> {
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
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: BackButton(color: Colors.black),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Wallet()));
                  },
                  child: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.black,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()));
                  },
                  child: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                )),
          ]),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5),
              child: Text(
                "My Contest",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.800,
              width: MediaQuery.of(context).size.width * 0.995,
              child: FutureBuilder(
                future: getContest(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.data == null) {
                      return Center(
                        child: Text('No context found'),
                      );
                    } else {
                      final list = snapshot.data as List;
                      return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                child: Card(
                              child: Column(children: [
                                SizedBox(
                                  height: 5,
                                ),
                                ListTile(
                                  leading: Container(
                                      color: Colors.amber,
                                      child: Image.asset(
                                        'assets/i2.jpg',
                                      )),
                                  title: Text(
                                    'FIFA',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  subtitle: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                //
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 96),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Rs. ' +
                                            list[index]["price"].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Played',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '05',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Total Bid',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(children: [
                                            CircleAvatar(
                                              radius: 10,
                                              child: Image.asset(
                                                  'assets/Group.png'),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '1120',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )
                                          ]),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ));
                          });
                    }
                  } else {
                    return Center(child: CustomLoader().loadingIcon());
                  }
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
