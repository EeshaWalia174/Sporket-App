import 'package:flutter/material.dart';
import 'package:sporket/pages/Upcomingcontest.dart';

import 'package:sporket/widgtes/nav_drawer.dart';



class TennisDetailsPage extends StatefulWidget {
  const TennisDetailsPage({Key? key}) : super(key: key);

  @override
  _TennisDetailsPageState createState() => _TennisDetailsPageState();
}

class _TennisDetailsPageState extends State<TennisDetailsPage> {
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
                  onTap: () {},
                  child: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.black,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
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
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width,
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
                      leading: Column(
                        children: [
                          Text('Popularity'),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Card(
                            
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: LinearProgressIndicator(
                                    value: 0.4, backgroundColor: Colors.white
                                  
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text('Overall Rating'),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, right: 5),
                            child: Card(
                           
                              color: Colors.green,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: LinearProgressIndicator(
                                    value: 0.7,
                                    color: Colors.orange,
                                    backgroundColor: Colors.white
                                 
                                    ),
                              ),
                            ),
                          )
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                           
                            borderRadius: BorderRadius.circular(10)),
                        child: Scaffold(
                          backgroundColor: Colors.white,
                          appBar: AppBar(
                            elevation: 0,
                            automaticallyImplyLeading: false,
                            backgroundColor: Colors.white,
                            title: TabBar(
                              unselectedLabelColor: Colors.black,
                              labelColor: Colors.black,
                              indicator: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.circular(5), 
                                color: Color(0XFF0A37E0),
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
                  ))
            ]),
          )),
    );
  }
}



















// import 'package:flutter/material.dart';
// import 'package:sporket/widgtes/nav_drawer.dart';

// class TennisDetailsPage extends StatefulWidget {
//   const TennisDetailsPage({Key? key}) : super(key: key);

//   @override
//   _TennisDetailsPageState createState() => _TennisDetailsPageState();
// }

// class _TennisDetailsPageState extends State<TennisDetailsPage> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           foregroundColor: Colors.black,
//           leading: BackButton(color: Colors.black),
//           actions: <Widget>[
//             Padding(
//                 padding: EdgeInsets.only(right: 20.0),
//                 child: GestureDetector(
//                   onTap: () {},
//                   child: Icon(
//                     Icons.account_balance_wallet,
//                     color: Colors.black,
//                     size: 26.0,
//                   ),
//                 )),
//             Padding(
//                 padding: EdgeInsets.only(right: 20.0),
//                 child: GestureDetector(
//                   onTap: () {},
//                   child: Icon(
//                     Icons.notifications,
//                     color: Colors.black,
//                   ),
//                 )),
//           ]),
//       drawer: NavDrawer(),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height * 0.280,
//               width: MediaQuery.of(context).size.width * 0.995,
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 clipBehavior: Clip.antiAlias,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.120,
//                             width: MediaQuery.of(context).size.height * 0.10,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(5)),
//                               image: DecorationImage(
//                                 image: AssetImage('assets/tennis1.png'),
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.145,
//                             width: MediaQuery.of(context).size.height * 0.350,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(1)),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   // SizedBox(
//                                   //   height: 30,
//                                   // ),
//                                   Text(
//                                     "IPTL",
//                                     style: TextStyle(
//                                         fontFamily: 'Montserrat',
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 22),
//                                   ),
//                                   SizedBox(
//                                     height: 35,
//                                   ),
//                                   Text(
//                                     "Regular Championship ",
//                                     style: TextStyle(
//                                         fontFamily: 'Montserrat',
//                                         //fontWeight: FontWeight.bold,
//                                         fontSize: 10),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const Divider(
//                         color: Colors.black,
//                       ),
//                       Row(
//                         //mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Column(
//                             //crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Popularity"),
//                               //Text("Popularity"),
//                               SizedBox(
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.004,
//                                 width: MediaQuery.of(context).size.width * 0.1,
//                                 child: LinearProgressIndicator(
//                                     //value: animation.value,
//                                     backgroundColor: Colors.white
//                                     //valueColor: changeColor),
//                                     ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             width: 150,
//                           ),
//                           Column(
//                             children: [
//                               Text("Overall rating"),
//                               //Text("Popularity"),
//                               SizedBox(
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.004,
//                                 width: MediaQuery.of(context).size.width * 0.1,
//                                 child: LinearProgressIndicator(
//                                     //value: animation.value,
//                                     color: Colors.white,
//                                     backgroundColor: Colors.orange
//                                     //valueColor: changeColor),
//                                     ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(24.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Upcoming"),
//                   Text("Finished"),
//                 ],
//               ),
//             ),
//             Card(
//               //color: Colors.yellow,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.145,
//                           width: MediaQuery.of(context).size.height * 0.455,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(1)),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image:
//                                               AssetImage('assets/tennis2.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Text(
//                                       "Vs",
//                                       style: TextStyle(
//                                           fontFamily: 'Montserrat',
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 14),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image: AssetImage('assets/mcc.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 1,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Manchester City",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Date 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Time",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: 1,
//                                     ),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       children: [
//                                         Text(
//                                           "Manchester United",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Timer 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 3,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Row(
//                     //   children: [
//                     //     Column(
//                     //       children: [
//                     //         Text("Start Date 01 May 2021"),
//                     //         Text("Start Time")
//                     //       ],
//                     //     ),
//                     //     Text("Timer 01 May")
//                     //   ],
//                     // )
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               //color: Colors.yellow,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.145,
//                           width: MediaQuery.of(context).size.height * 0.455,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(1)),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image:
//                                               AssetImage('assets/tennis3.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Text(
//                                       "Vs",
//                                       style: TextStyle(
//                                           fontFamily: 'Montserrat',
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 14),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image: AssetImage('assets/mufc.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 1,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Manchester City",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Date 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Time",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: 1,
//                                     ),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       children: [
//                                         Text(
//                                           "Manchester United",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Timer 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 3,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Row(
//                     //   children: [
//                     //     Column(
//                     //       children: [
//                     //         Text("Start Date 01 May 2021"),
//                     //         Text("Start Time")
//                     //       ],
//                     //     ),
//                     //     Text("Timer 01 May")
//                     //   ],
//                     // )
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               //color: Colors.yellow,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.145,
//                           width: MediaQuery.of(context).size.height * 0.455,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(1)),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image:
//                                               AssetImage('assets/tennis4.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Text(
//                                       "Vs",
//                                       style: TextStyle(
//                                           fontFamily: 'Montserrat',
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 14),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image: AssetImage('assets/mufc.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 1,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Manchester City",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Date 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Time",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: 1,
//                                     ),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       children: [
//                                         Text(
//                                           "Manchester United",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Timer 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 3,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Row(
//                     //   children: [
//                     //     Column(
//                     //       children: [
//                     //         Text("Start Date 01 May 2021"),
//                     //         Text("Start Time")
//                     //       ],
//                     //     ),
//                     //     Text("Timer 01 May")
//                     //   ],
//                     // )
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               //color: Colors.yellow,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.145,
//                           width: MediaQuery.of(context).size.height * 0.455,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(1)),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image:
//                                               AssetImage('assets/tennis1.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Text(
//                                       "Vs",
//                                       style: TextStyle(
//                                           fontFamily: 'Montserrat',
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 14),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image: AssetImage('assets/mufc.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 1,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Manchester City",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Date 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Time",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: 1,
//                                     ),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       children: [
//                                         Text(
//                                           "Manchester United",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Timer 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 3,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Row(
//                     //   children: [
//                     //     Column(
//                     //       children: [
//                     //         Text("Start Date 01 May 2021"),
//                     //         Text("Start Time")
//                     //       ],
//                     //     ),
//                     //     Text("Timer 01 May")
//                     //   ],
//                     // )
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               //color: Colors.yellow,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.145,
//                           width: MediaQuery.of(context).size.height * 0.455,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(1)),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image: AssetImage('assets/mcc.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Text(
//                                       "Vs",
//                                       style: TextStyle(
//                                           fontFamily: 'Montserrat',
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 14),
//                                     ),
//                                     // SizedBox(
//                                     //   width: 65,
//                                     // ),
//                                     Container(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       width:
//                                           MediaQuery.of(context).size.height *
//                                               0.050,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         image: DecorationImage(
//                                           image: AssetImage('assets/mufc.png'),
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 1,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Manchester City",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Date 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Start Time",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       width: 1,
//                                     ),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       children: [
//                                         Text(
//                                           "Manchester United",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "Timer 01 May 2021",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                         Text(
//                                           "",
//                                           style: TextStyle(
//                                               fontFamily: 'Montserrat',
//                                               //fontWeight: FontWeight.bold,
//                                               fontSize: 10),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 3,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Row(
//                     //   children: [
//                     //     Column(
//                     //       children: [
//                     //         Text("Start Date 01 May 2021"),
//                     //         Text("Start Time")
//                     //       ],
//                     //     ),
//                     //     Text("Timer 01 May")
//                     //   ],
//                     // )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
