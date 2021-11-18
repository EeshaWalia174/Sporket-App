import 'package:flutter/material.dart';

import 'package:sporket/pages/notification_page.dart';
import 'package:sporket/pages/wallet.dart';

class ResultPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                  elevation: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/i2.jpg')),
                      title: Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      subtitle: Text(
                        'Team A-10   Team B-10',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                  elevation: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: ListTile(
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/i2.jpg')),
                        title: Text(
                          'Man of the Match ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage('assets/i2.jpg')),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Player name',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        )),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                  elevation: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: ListTile(
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/i2.jpg')),
                        title: Text(
                          'Man of the Match ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage('assets/i2.jpg')),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Player name',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        )),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
