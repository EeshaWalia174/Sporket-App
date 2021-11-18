import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sporket/Utils/BaseUrl.dart';
import 'login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
    String? emailController, passwordController;
    bool loading = false;
   login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String url = BaseUrl.url + "users/login/";
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      setState(() {
        loading = true;
      });
      Map loginData = {
        "email_or_mobile": emailController,
        "password": passwordController
      };
      var response = await http.post(Uri.parse("$url"), body: loginData);
      if (response.statusCode == 200) {
        setState(() {
          loading = false;
        });
        var jsonObject = json.decode(response.body);
        try {
          prefs.setBool("isLogin", true);
        } catch (e) {
          print('setBool err : $e');
        }
        prefs.setString("token", jsonObject["data"]["data"]["token"]);
        Navigator.pop(context);
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Home()));
      } else if(response.statusCode==400){

        FailureMessage(message: "Invalid Credential").failedMessage();
      }
      
      else {
        setState(() {
          loading = false;
        });
        print(response.body);

        FailureMessage(message: "Internal Server").failedMessage();
      }
    }
  }
  String? _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(height: 15.0),
            Center(
              child: Image(
                image: AssetImage('assets/launch_image.png'),
                height: 100,
                width: 100,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
            ClipPath(
              child: Container(
                color: Colors.blueGrey[100],
                height: MediaQuery.of(context).size.height * 0.84,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 35),
                    Text(
                      "Welcome User",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0, right: 19.0),
                      child: TextFormField(

                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          hintText: 'Full Name',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              backgroundColor: Colors.transparent),
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "This Field is Required";
                          } else {
                            return null;
                          }
                        },
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.085,
                      width: MediaQuery.of(context).size.width * 0.995,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.white, Colors.white])),
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 13, right: 21, top: 5),
                        child: DropdownButton<String>(
                          underline: Container(color: Colors.transparent),
                          isExpanded: true,
                          items: [
                            DropdownMenuItem<String>(
                              child: Center(
                                child: Text(
                                  'India',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 14,
                                      backgroundColor: Colors.transparent),
                                ),
                              ),
                              value: 'one',
                            ),
                            DropdownMenuItem<String>(
                              child: Center(
                                child: Text(
                                  'Dubai',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 14,
                                      backgroundColor: Colors.transparent),
                                ),
                              ),
                              value: 'two',
                            ),
                            DropdownMenuItem<String>(
                              child: Center(
                                child: Text(
                                  'Malaysia',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 14,
                                      backgroundColor: Colors.transparent),
                                ),
                              ),
                              value: 'three',
                            ),
                            DropdownMenuItem<String>(
                              child: Center(
                                child: Text(
                                  'Singapore',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 14,
                                      backgroundColor: Colors.transparent),
                                ),
                              ),
                              value: 'four',
                            ),
                            DropdownMenuItem<String>(
                              child: Center(
                                child: Text(
                                  'Other',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 14,
                                      backgroundColor: Colors.transparent),
                                ),
                              ),
                              value: 'five',
                            ),
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              _value = value;
                            });
                          },
                          hint: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                'State',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                    fontSize: 14,
                                    backgroundColor: Colors.transparent),
                              ),
                            ),
                          ),
                          value: _value,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0, right: 19.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          hintText: 'Mobile',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              backgroundColor: Colors.transparent),
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "This Field is Required";
                          } else {
                            return null;
                          }
                        },
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0, right: 19.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              backgroundColor: Colors.transparent),
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "This Field is Required";
                          } else {
                            return null;
                          }
                        },
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.080,
                      width: MediaQuery.of(context).size.width * 0.900,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: HexColor('#0A37E0'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                      Text(
                        "or Sign up with",
                        style:
                            TextStyle(fontSize: 12, fontFamily: 'Montserrat'),
                      ),
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 5.0, right: 20.0),
                            child: Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: GestureDetector(
                            onTap: () async {},
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset(
                                  'assets/google_logo.png',
                                ),
                              ),
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 22),
                        Container(
                          width: 80,
                          height: 80,
                          child: GestureDetector(
                            onTap: () async {},
                            child: Card(
                              elevation: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset(
                                  'assets/facebook_logo.png',
                                ),
                              ),
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1),
                    GestureDetector(
                      onTap: () {
                        print("Container clicked");
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account.',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Montserrat'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    fontFamily: 'Montserrat'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              clipper: CustomClipPath(),
            ),
          ],
        ),
      ),
    ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 40);
    path.quadraticBezierTo(size.width / 2, 0, size.width, 40);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}




































/*import 'package:flutter/material.dart';
import 'package:sporket/pages/cricket_page.dart';
import 'package:sporket/pages/football_page.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    return getTab();
  }
}

DefaultTabController getTab() {
  return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.black,

            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Cricket',
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Football',
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Tennis',
                    ),
                  ),
                ),
              ),
            ],
            // indicatorColor: Colors.,
            // indicatorWeight: 1.0,
          ),
        ),
      ),
      body: TabBarView(
        children: [
          CricketPage(),
          FootballPage(),
          FootballPage(),
        ],
      ),
    ),
  );
}

*/

/*
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/pages/cricket_page.dart';
import 'package:sporket/pages/football_page.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage>
    with SingleTickerProviderStateMixin {
  List<Widget> myTabs() {
    return [
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: currentIndex == 0
                  ? Border.all(color: Colors.white)
                  : Border.all(color: HexColor('#E5E5E5'))),
          child: Tab(
            child: Text(
              "Cricket",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: currentIndex == 1
                  ? Border.all(color: Colors.white)
                  : Border.all(color: HexColor('#E5E5E5'))),
          child: Tab(
            child: Text(
              "Football",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: currentIndex == 2
                  ? Border.all(color: Colors.white)
                  : Border.all(color: HexColor('#E5E5E5'))),
          child: Tab(
            child: Text(
              "Tennis",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  // color: Colors.black,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    ];
  }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs().length);
  }
 
  int currentIndex = 0;

  @override
  void dispose() {
    print(_tabController.index);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          currentIndex = _tabController.index;
        });
      }
    });
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(65.0),
            child: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                controller: _tabController,
                indicatorPadding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                labelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                tabs: myTabs(),
                indicatorColor: Colors.blue,
                indicatorWeight: 2.0,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              CricketPage(),
              FootballPage(),
              FootballPage(),
            ],
          ),
        ));
  }
}

*/