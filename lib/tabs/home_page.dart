import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sporket/Utils/BaseUrl.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  getStatistics() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    String url = BaseUrl.url + "events/statistic/";
    var response = await http
        .get(Uri.parse("$url"), headers: {"Authorization": "Bearer $token"});
    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body);
      return jsonObject["data"][0];
    } else {
      FailureMessage(message: "Internal Server Error").failedMessage();
      return null;
    }
  }

  getLeagues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    String url = BaseUrl.url + "events/series/";
    var response = await http
        .get(Uri.parse("$url"), headers: {"Authorization": "Bearer $token"});
    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body);
      return jsonObject["data"];
    } else {
      FailureMessage(message: "Internal Server Error").failedMessage();
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(
                    image: AssetImage('assets/photoscene.jpeg'),
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        Colors.amber.withOpacity(0.9), BlendMode.hardLight))),
            child: FutureBuilder(
              future: getStatistics(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.data == null) {
                    return Center(
                      child: Text("This Section not Processed Yet"),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          Image.asset(
                            'assets/bvblogo.png',
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("Borussia Dortmund",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800)),
                          SizedBox(height: 5),
                          Text(
                            "Dortmund, Germany",
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.040,
                                width: MediaQuery.of(context).size.width * 0.15,
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(5)),
                                  color: Colors.black,
                                ),
                                child: Text(
                                  "WINS",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      backgroundColor: Colors.black),
                                ),
                              ),
                              SizedBox(width: 2),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.040,
                                width: MediaQuery.of(context).size.width * 0.08,
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(0)),
                                  color: Colors.black,
                                ),
                                child: Text(
                                  (snapshot.data as dynamic)["total_wins"]
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.040,
                                width: MediaQuery.of(context).size.width * 0.20,
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(5)),
                                  color: Colors.black,
                                ),
                                child: Text(
                                  "DRAWS",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      backgroundColor: Colors.black),
                                ),
                              ),
                              SizedBox(width: 2),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.040,
                                width: MediaQuery.of(context).size.width * 0.08,
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(0)),
                                  color: Colors.black,
                                ),
                                child: Text(
                                  (snapshot.data as dynamic)["total_draws"]
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.040,
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(5)),
                                  color: Colors.black,
                                ),
                                child: Text(
                                  "LOSS",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      backgroundColor: Colors.black),
                                ),
                              ),
                              SizedBox(width: 2),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.040,
                                width: MediaQuery.of(context).size.width * 0.08,
                                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(0)),
                                  color: Colors.black,
                                ),
                                child: Text(
                                  (snapshot.data as dynamic)["total_losses"]
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.325,
            width: MediaQuery.of(context).size.width * 0.995,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.300,
                      width: MediaQuery.of(context).size.width * 0.450,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/Points.jpg'),
                        fit: BoxFit.fill,
                      )),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "My Contest",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.170,
            width: MediaQuery.of(context).size.width * 0.970,
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
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.170,
                            width: MediaQuery.of(context).size.width * 0.895,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Container(
                                        color: Colors.white,
                                        child: Image.asset(
                                          'assets/i2.jpg',
                                        ),
                                      ),
                                      title: Text(
                                        list[index]["series_name"],
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
                                                    list[index]["team1"],
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  Text(list[index]["team2"],
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 97.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Rs. " +
                                                list[index]["price"].toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  }
                } else {
                  return Center(child: CustomLoader().loadingIcon());
                }
              },
            ),
          ),

          // Container(
          //   height: MediaQuery.of(context).size.height * 0.170,
          //   width: MediaQuery.of(context).size.width * 0.970,
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: 5,
          //       itemBuilder: (BuildContext context, int index) {
          //         return Container(
          //           height: MediaQuery.of(context).size.height * 0.170,
          //           width: MediaQuery.of(context).size.width * 0.895,
          //           child: Card(
          //             child: Padding(
          //               padding: const EdgeInsets.only(top: 10.0),
          //               child: Column(children: [
          //                 ListTile(
          //                   leading: Container(
          //                       color: Colors.amber,
          //                       child: Image.asset(
          //                         'assets/i2.jpg',
          //                       )),
          //                   title: Text(
          //                     'FIFA',
          //                     style: TextStyle(
          //                       fontSize: 12,
          //                       fontWeight: FontWeight.w800,
          //                     ),
          //                   ),
          //                   subtitle: Column(
          //                     children: [
          //                       Row(
          //                         mainAxisAlignment:
          //                             MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Column(
          //                             children: [
          //                               SizedBox(
          //                                 height: 10,
          //                               ),
          //                               Image.asset(
          //                                 'assets/imglogo.png',
          //                               ),
          //                               Text(
          //                                 'Matchester City',
          //                                 style: TextStyle(
          //                                   fontSize: 10,
          //                                   fontWeight: FontWeight.w500,
          //                                 ),
          //                               ),
          //                             ],
          //                           ),
          //                           Image.asset(
          //                             'assets/MatchesterCity.png',
          //                           ),
          //                           Column(
          //                             children: [
          //                               SizedBox(
          //                                 height: 10,
          //                               ),
          //                               Image.asset(
          //                                 'assets/imglogo.png',
          //                                 //
          //                               ),
          //                               Text('Manchester United',
          //                                   style: TextStyle(
          //                                     fontSize: 10,
          //                                     fontWeight: FontWeight.w500,
          //                                   )),
          //                             ],
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 97.0),
          //                   child: Row(
          //                     children: [
          //                       Text(
          //                         'Rs. 10,000',
          //                         style: TextStyle(fontWeight: FontWeight.bold),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ]),
          //             ),
          //           ),
          //         );
          //       }),
          // ),

          SizedBox(
            height: 20,
          ),
          Text(
            "Leagues",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.230,
            width: MediaQuery.of(context).size.width * 0.895,
            child: FutureBuilder(
              future: getLeagues(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.data == null) {
                    return Center(
                      child: Text("No contest Found"),
                    );
                  } else {
                    final list = snapshot.data as List;
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (BuildContext conntext, int index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.895,
                            child: Card(
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListTile(
                                      leading: Image.asset('assets/i2.jpg'),
                                      title: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                list[index]["series_name"],
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 10),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, left: 1),
                                                child: Card(
                                                  child: SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            5,
                                                    child:
                                                        LinearProgressIndicator(
                                                            value: 0.4,
                                                            backgroundColor:
                                                                Colors.white),
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
                                              padding: const EdgeInsets.only(
                                                  top: 10.0, right: 18),
                                              child: Card(
                                                color: Colors.green,
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child:
                                                      LinearProgressIndicator(
                                                          value: 0.7,
                                                          color: Colors.orange,
                                                          backgroundColor:
                                                              Colors.white),
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
                            ),
                          );
                        });
                  }
                } else {
                  return Center(child: CustomLoader().loadingIcon());
                }
              },
            ),
          ),
        ]),
      ),
    );
  }
}
