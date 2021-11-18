import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EditUserProfile extends StatelessWidget {
  const EditUserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("#C11F23"),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1000,
              height: MediaQuery.of(context).size.height * 0.200,
              color: HexColor("#C11F23"),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage("assets/johncena.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 85,
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        "assets/edits.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.713,
              width: MediaQuery.of(context).size.width * 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "First Name *",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        TextField(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Last Name *",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        TextField(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mobile No *",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        TextField(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Email Address *",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        TextField(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Password",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        TextField(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Change Password",
                            style: TextStyle(
                              color: HexColor("#C11F23"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.090,
                    width: MediaQuery.of(context).size.width * 1000,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  HexColor("#0A37E0")),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      EdgeInsets.all(15.0)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(
                                          color: HexColor("#0A37E0"))))),
                          onPressed: () {},
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Montserrat'),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
