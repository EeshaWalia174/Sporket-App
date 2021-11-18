import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/pages/contestQuestionpage.dart';
import 'package:sporket/pages/notification_page.dart';

import 'package:sporket/pages/wallet.dart';

class RankPrizePage extends StatelessWidget {
  const RankPrizePage({Key? key}) : super(key: key);
  Widget _listItem(index) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: ListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        leading: Text(
          "Rank $index",
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
        ),
        trailing: Text(
          "Rs. 500",
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: Container(
        height: 56,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: HexColor('#0A37E0'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: Text(
            ' Join Contest',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
            ),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContestQuestion()));
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Card(
                    //elevation: 5,
                    child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                            color: Colors.amber,
                            // height: 70,
                            //  width: 70,
                            child: Image.asset(
                              'assets/i2.jpg',
                            )),
                        title: Text(
                          'FIFA',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Column(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
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
                                        fontSize: 9,
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
                                      //
                                    ),
                                    Text('Manchester United',
                                        style: TextStyle(
                                          fontSize: 9,
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
                        padding: const EdgeInsets.only(left: 97.0),
                        child: Row(
                          children: [
                            Text(
                              'Rs. 10,000',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 10,
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
                                    // elevation: 5.0,
                                    child: SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      child: LinearProgressIndicator(
                                          value: 0.4,
                                          backgroundColor: Colors.white
                                          //valueColor: changeColor),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(width: 100,),

                            Column(children: [
                              Text('Overall Rating',
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
                                  //elevation: 5.0,
                                  color: Colors.green,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    child: LinearProgressIndicator(
                                        value: 0.7,
                                        color: Colors.orange,
                                        backgroundColor: Colors.white
                                        //valueColor: changeColor),
                                        ),
                                  ),
                                ),
                              )
                            ])
                          ],
                        ),
                      )
                    ],
                  ),
                )),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: Column(children: [
                    Column(
                      children: [
                        ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          leading: Text(
                            'Rank',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 14),
                          ),
                          trailing: Text(
                            'Prize Amount',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 14),
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 12,
                          itemBuilder: (_, index) {
                            return _listItem(index);
                          }),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.45,
                  width: MediaQuery.of(context).size.height / 0.25,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              dense: true,
                              visualDensity:
                                  VisualDensity(horizontal: 0, vertical: -4),
                              title: Text(
                                'How to Play',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 14),
                              ),
                            ),
                            Divider(),
                            ListTile(
                              title: Text(
                                '''1. Lorem Ipsum is simply dummy text of the printing.
2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
3. Lorem Ipsum is simply dummy text of the printing 
4. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
''',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 10,
                                  height: 2,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
