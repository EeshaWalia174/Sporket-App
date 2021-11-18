import 'package:flutter/material.dart';
import 'package:sporket/pages/comments_tab_page.dart';
import 'package:sporket/pages/faq_tab_page.dart';
import 'package:sporket/pages/ue_tab_page.dart';

class ContestPageDetais extends StatefulWidget {
  @override
  _ContestPageDetaisState createState() => _ContestPageDetaisState();
}

class _ContestPageDetaisState extends State<ContestPageDetais> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
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
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0XFF0A37E0),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "UE",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            //color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Comments",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "FAQs",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                  indicatorColor: Colors.blue,
                  indicatorWeight: 3.0,
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [UETabPage(), CommentsTabPage(), FAQsTabPage()],
        ),
      ),
    );
  }
}











































/*import 'package:flutter/material.dart';

class ContestPageDetais extends StatelessWidget {
  const ContestPageDetais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.250,
            width: MediaQuery.of(context).size.width * 0.995,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.120,
                          width: MediaQuery.of(context).size.height * 0.10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                              image: AssetImage('assets/i2.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.145,
                          width: MediaQuery.of(context).size.height * 0.350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(1)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text("FIFA"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.050,
                                    width: MediaQuery.of(context).size.height *
                                        0.050,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                        image: AssetImage('assets/mcc.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 65,
                                  // ),
                                  Text(
                                    "Vs",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  // SizedBox(
                                  //   width: 65,
                                  // ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.050,
                                    width: MediaQuery.of(context).size.height *
                                        0.050,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                        image: AssetImage('assets/mufc.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Manchester City",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    "Manchester United",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Popularity"),
                            //Text("Popularity"),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.004,
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: LinearProgressIndicator(
                                  //value: animation.value,
                                  backgroundColor: Colors.white
                                  //valueColor: changeColor),
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          children: [
                            Text("Overall rating"),
                            //Text("Popularity"),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.004,
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: LinearProgressIndicator(
                                  //value: animation.value,
                                  color: Colors.white,
                                  backgroundColor: Colors.orange
                                  //valueColor: changeColor),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Text("Select Contest that you wish to play")),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}*/
