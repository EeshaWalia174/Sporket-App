import 'package:flutter/material.dart';
import 'package:sporket/pages/Upcomingcontest.dart';

import 'package:sporket/pages/notification_page.dart';

import 'package:sporket/pages/wallet.dart';
import 'package:sporket/widgtes/nav_drawer.dart';

class CricketDetailsPage extends StatefulWidget {
  const CricketDetailsPage({Key? key}) : super(key: key);

  @override
  _CricketDetailsPageState createState() => _CricketDetailsPageState();
}

class _CricketDetailsPageState extends State<CricketDetailsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
      drawer: buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Image.asset('assets/i2.jpg'),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'ICC World Cup',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Regular Champoionship',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Text(''),
                    ),
                    Divider(
                      height: 20,
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Popularity',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ), 
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, left: 1),
                                child: Card(
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    child: LinearProgressIndicator(
                                        value: 0.4,
                                        backgroundColor: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(children: [
                            Text(
                              'Overall Rating',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, right: 18),
                              child: Card(
                                color: Colors.green,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width / 5,
                                  child: LinearProgressIndicator(
                                      value: 0.7,
                                      color: Colors.orange,
                                      backgroundColor: Colors.white),
                                ),
                              ),
                            )
                          ])
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.60,
                child: DefaultTabController(
                  length: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: Scaffold(
                        backgroundColor: Colors.white,
                        appBar: AppBar(
                          elevation: 0,
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.white,
                          title: TabBar(
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.white,
                            indicator: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff0A37E0),
                            ),
                            tabs: [
                              Tab(
                                child: Text(
                                  "Upcoming",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Finished",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        body: TabBarView(
                          children: [
                            Upcomingcontest(),
                            Upcomingcontest(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
