import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/pages/next_password.dart';

import 'package:sporket/pages/verification_page.dart';

import 'login.dart';

class Forgotpass extends StatefulWidget {
  @override
  _ForgotpassState createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
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
                height: MediaQuery.of(context).size.height * 0.75,
                color: Colors.blueGrey[100],
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 70),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(height: 20),
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(20),
                        child: Text(
                          "Enter Phone no with your account",
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Montserrat'),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        //initialValue: "7305822599",
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
                        //onSaved: (val) => emailController = val,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // backgroundColor: Colors.yellow,
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Container(
                    //   width: MediaQuery.of(context).size.width * 0.93,
                    //   height: MediaQuery.of(context).size.height * 0.101,
                    //   padding: EdgeInsets.all(0),
                    //   margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    //   child: Padding(
                    //     padding:
                    //         const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    //     child: ElevatedButton(
                    //       style: ButtonStyle(
                    //           backgroundColor: MaterialStateProperty.all<Color>(
                    //               HexColor("#0A37E0")),
                    //           padding:
                    //               MaterialStateProperty.all<EdgeInsetsGeometry>(
                    //                   EdgeInsets.all(15.0)),
                    //           shape: MaterialStateProperty.all<
                    //                   RoundedRectangleBorder>(
                    //               RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(5.0),
                    //                   side: BorderSide(
                    //                       color: HexColor("#0A37E0"))))),
                    //       onPressed: () {
                    //         // Navigator.push(
                    //         //     context,
                    //         //     MaterialPageRoute(
                    //         //         builder: (context) => VerificationPage()));
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => ForgotNextPass()));
                    //       },
                    //       child: Text(
                    //         "Submit",
                    //         style: TextStyle(
                    //             fontSize: 14,
                    //             fontWeight: FontWeight.bold,
                    //             fontFamily: 'Montserrat'),
                    //       ),
                    //     ),
                    //   ),
                    // ),
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
                          'Submit',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerificationPage()));
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ForgotNextPass()));
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotNextPass()));
                      },
                      child: Text(
                        'Next Password Screen',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 100),
                    GestureDetector(
                      onTap: () {
                        print("Container clicked");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Remembered your password.',
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
                                  fontFamily: 'Montserrat',
                                  color: Colors.blue),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              clipper: CustomClipPath(),
            )
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
