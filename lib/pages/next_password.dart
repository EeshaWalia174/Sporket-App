import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/pages/login.dart';
import 'package:sporket/pages/verification_page.dart';

class ForgotNextPass extends StatefulWidget {
  @override
  _ForgotNextPassState createState() => _ForgotNextPassState();
}

class _ForgotNextPassState extends State<ForgotNextPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
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
                height: MediaQuery.of(context).size.height * 0.750,
                color: Colors.blueGrey[100],
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 70),
                    Text(
                      "    Type your next \npassword carefully",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
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
                         
                          hintText: 'New Password',
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
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: TextFormField(
                      
                        validator: (val) =>
                            val!.length < 8 ? 'Password too Short..' : null,
                        
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
                         
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: 14,
                              backgroundColor: Colors.transparent),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
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
                          'Reset Password',
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
                        },
                      ),
                    ),
                    SizedBox(height: 135),
                    GestureDetector(
                      onTap: () {
                        print("Container clicked");
                      },
                      child: Container(
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
