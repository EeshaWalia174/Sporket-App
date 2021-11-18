import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/pages/contestQuestionpage.dart';
import 'package:sporket/widgtes/AlertBox.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertBox(
      widget: Wrap(children: [
        Column(
          children: [
            Container(
              // height: 100,
              decoration: BoxDecoration(
                color: Color(0XFF0A37E0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              width: double.infinity,

              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Text('Congrats you have recieved',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    )),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      child: Image.asset('assets/Group.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('1000',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text('You can use these preds for this contest only',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
              width: MediaQuery.of(context).size.width * 0.625,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: HexColor('#0A37E0'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Text('OK',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    )),
                onPressed: () {
 Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ContestQuestion();
                    }));


                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
