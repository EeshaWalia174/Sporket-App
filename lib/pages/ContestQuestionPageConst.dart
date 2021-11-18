import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sporket/pages/CommonAlertBox.dart';

// ignore: must_be_immutable
class QuestionPage extends StatefulWidget {
  late String coins;
  late String points;

  QuestionPage({required this.coins, required this.points});

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  var method;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Radio(
            value: "Flutter",
            groupValue: method,
            onChanged: (value) {
              setState(() {
                method = value;
              });
            },
            activeColor: Colors.blue,
          ),
          CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage('assets/john.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Virat Kohli',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => CommonAlertBox(
                        text: 'Congrats you have completed the contest',
                      ));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.015,
              width: MediaQuery.of(context).size.width * 0.15,
              child: Text(
                widget.points,
                style: TextStyle(color: Colors.blue, fontSize: 10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.032,
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                  color: Color(0xffC8CED3),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      child: Image.asset('assets/Group.png'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width * 0.110,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: TextFormField(
                          maxLength: 3,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(3),
                          ],
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            counter: Offstage(),
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: 20, left: 10),
                            enabledBorder: InputBorder.none,
                            hintText: "0",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) => CommonAlertBox(
                                  text: 'Sorry the time limit has expired ',
                                ));
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 7.0,
                              top: 4,
                            ),
                            child: Text(
                              'Bid',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.088,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5)))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    //
    //
  }
}
