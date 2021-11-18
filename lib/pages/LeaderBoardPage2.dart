import 'package:flutter/material.dart';
import 'package:sporket/pages/notification_page.dart';

import 'package:sporket/pages/wallet.dart';

class LeaderBoardPage2 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(

            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    'Players',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  trailing: Text(
                    'Scores',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.68,
                  child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Divider(),
                            ListTile(
                              leading: Text(
                                'John',
                              ),
                              trailing: Text('1500'),
                            ),
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
