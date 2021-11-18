import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/pages/rank-prize-page.dart';

class UETabPage extends StatefulWidget {
  @override
  _UETabPageState createState() => _UETabPageState();
}

class _UETabPageState extends State<UETabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
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
                                Text('Popularity'),
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
                              Text('Overall Rating'),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, right: 18),
                                child: Card(
                                  color: Colors.green,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
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
                    ],
                  ),
                )),
              ),
            ),
            Center(
                child: Text(
              "Select Contest that you wish to play",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext contex, int index) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.150,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RankPrizePage()));
                          },
                          child: Card(
                            color: HexColor('#636876'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                top: 5,
                                right: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(children: [
                                    Text(
                                      'Entry Fee',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CircleAvatar(
                                      radius: 10,
                                      child: Image.asset('assets/Group.png'),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '50',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ]),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Prize Money",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        "Contestent",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "25,20,0000",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        "5,00,000",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
