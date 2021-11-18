import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sporket/Utils/BaseUrl.dart';
import 'package:sporket/pages/forgotpass.dart';
import 'package:sporket/pages/home.dart';
import 'package:sporket/pages/signup.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class Resource {
  final Status status;
  Resource({required this.status});
}

enum Status { Success, Error, Cancelled }

class _LoginState extends State<Login> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool? isLogin;

  @override
  void initState() {
   /// checkExistingLogin();
    super.initState();
  }

  Future<void> checkExistingLogin() async {
    setState(() {
      loading = true;
    });
    SharedPreferences preferences = await SharedPreferences.getInstance();
    // ignore: await_only_futures
    bool temp = await preferences.getBool("isLogin") as bool;

    if (temp == true) {
      setState(() {
        loading = false;
      });
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      setState(() {
        loading = false;
      });
    }
  }

  Future<Resource?> signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      switch (result.status) {
        case LoginStatus.success:
          final AuthCredential facebookCredential =
              FacebookAuthProvider.credential(result.accessToken!.token);

          await _auth.signInWithCredential(facebookCredential);
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("isLogin", true);
          return Resource(status: Status.Success);
        case LoginStatus.cancelled:
          return Resource(status: Status.Cancelled);
        case LoginStatus.failed:
          return Resource(status: Status.Error);
        default:
          return null;
      }
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? emailController, passwordController;
  bool checkBoxValue = false;
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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formkey,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 35),
              Image(
                image: AssetImage('assets/launch_image.png'),
                height: 100,
                width: 100,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
              ClipPath(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.77,
                    color: Colors.blueGrey[100],
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 35),
                        Text(
                          "Login User",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 18.0, right: 18.0),
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
                              //hintText: 'Your e-mail',
                              hintText: 'Email',
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
                            onSaved: (val) => emailController = val,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                // backgroundColor: Colors.yellow,
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 18.0, right: 18.0),
                          child: TextFormField(
                            validator: (val) =>
                                val!.length < 8 ? 'Password too Short..' : null,
                            onSaved: (val) => passwordController = val,
                            obscureText: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Montserrat'),
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
                                  fontSize: 14,
                                  backgroundColor: Colors.transparent),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Forgotpass()));
                          },
                          child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.fromLTRB(10, 10, 20, 0),
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'Montserrat'),
                                textAlign: TextAlign.right,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                              'Login',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                            onPressed: () {
                              login();
                            },
                          ),
                        ),
                        Row(children: <Widget>[
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 10.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 50,
                                )),
                          ),
                          Text(
                            "or Login with",
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Montserrat'),
                          ),
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 5.0, right: 20.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 50,
                                )),
                          ),
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: GestureDetector(
                                onTap: () async {
                                  final provider =
                                      Provider.of<GoogleSignInProvider>(context,
                                          listen: false);
                                  provider.login();
                                },
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
                        SizedBox(height: 35),
                        GestureDetector(
                          onTap: () {
                            print("Container clicked");
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have an account.',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Signup()));
                                  },
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                clipper: CustomClipPath(),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          Center(child: CircularProgressIndicator()),
        ],
      );
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
