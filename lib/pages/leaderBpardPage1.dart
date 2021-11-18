import 'package:flutter/material.dart';
import 'package:sporket/pages/LeaderBoardPage2.dart';
import 'package:sporket/pages/notification_page.dart';

import 'package:sporket/pages/wallet.dart';

class LeaderBoardPage1 extends StatefulWidget {
  @override
  _LeaderBoardPage1 createState() => _LeaderBoardPage1();
}

class _LeaderBoardPage1 extends State<LeaderBoardPage1> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LeaderBoardPage2();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Card(
                      
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/i2.jpg')),
                        title: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'FIFA',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'Rs.10,00,000',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
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
                                  'Matchester City',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/MatchesterCity.png',
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  'assets/imglogo.png',
                                ),
                                Text('Manchester United',
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
                  ),
                );
              }),
        ));
  }
}
