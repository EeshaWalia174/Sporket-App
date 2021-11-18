import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/pages/contactus.dart';
import 'package:sporket/pages/contest.dart';
import 'package:sporket/pages/privacypolicy.dart';

import 'package:sporket/pages/security.dart';

import 'package:sporket/pages/termscondition.dart';
import 'package:sporket/pages/wallet.dart';

import '../edit_profile_page.dart';

Widget buildDrawer(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: HexColor("#C11F23"),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                elevation: 2.0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.122,
                  width: MediaQuery.of(context).size.width * 0.250,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage("assets/johncena.jpg"),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John Cena",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Montserrat')),
                  SizedBox(height: 5),
                  Text("john@gmail.com",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          color: Colors.white)),
                  SizedBox(height: 5),
                  Text("0090812384",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                      )),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditUserProfile()));
                },
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
        ListTile(
          leading: Icon(Icons.person),
          title: Text('User Info', style: TextStyle(fontFamily: 'Montserrat')),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditUserProfile()));
          },
        ),
        Divider(
          height: 0,
        ),
        ListTile(
          leading: Icon(Icons.account_balance_wallet),
          title: Text('My Wallet', style: TextStyle(fontFamily: 'Montserrat')),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Wallet()));
          },
        ),
        Divider(
          height: 0,
        ),
        ListTile(
          leading: Icon(Icons.verified),
          title: Text(
            'My Contest',
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Contest()));
          },
        ),
        Divider(
          height: 0,
        ),
        ListTile(
          leading: Icon(Icons.mail),
          title: Text('Contact Us', style: TextStyle(fontFamily: 'Montserrat')),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EmailUsScreen()));
          },
        ),
        Divider(
          height: 0,
        ),
        ListTile(
          leading: Icon(
            Icons.file_copy,
          ),
          title: Text(
            'Terms and Conditions',
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TermsnCondition()));
          },
        ),
        Divider(
          height: 0,
        ),
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text('Privacy Policy',
              style: TextStyle(fontFamily: 'Montserrat')),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PrivacyPolicy()));
          },
        ),
        Divider(
          height: 0,
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text('Security', style: TextStyle(fontFamily: 'Montserrat')),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Security()));
          },
        ),
        Divider(
          height: 0,
        ),
        Divider(
          height: 0,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: HexColor('#0A37E0'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: Text(
              'Logout',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
            onPressed: () {},
          ),
        )
      ],
    ),
  );
}
