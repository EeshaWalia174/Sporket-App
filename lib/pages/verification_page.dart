import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'login.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  int start = 60;
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
                height: MediaQuery.of(context).size.height * 0.739,
                color: Colors.blueGrey[100],
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 85),
                    Text(
                      "Verification Code",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(height: 35),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: otpField(),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Send OTP again in ',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              color: Colors.black)),
                      TextSpan(
                          text: ' 00:$start',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              color: Colors.black)),
                      TextSpan(
                          text: ' seconds',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              color: Colors.black)),
                    ])),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        startTimer();
                      },
                      child: Text(
                        'Resend Code?',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Remembered your password.',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Montserrat'),
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

  void startTimer() {
    const duration = Duration(seconds: 1);
    // ignore: unused_local_variable
    Timer timer = Timer.periodic(duration, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  Widget otpField() {
    return OTPTextField(
      length: 4,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 58,
      otpFieldStyle: OtpFieldStyle(
          enabledBorderColor: Colors.black,
          disabledBorderColor: Colors.white,
          backgroundColor: Colors.white,
          borderColor: Colors.black),
      style: TextStyle(fontSize: 17),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.box,
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
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
