import 'package:flutter/material.dart';
import 'package:sporket/widgtes/AlertBox.dart';

// ignore: must_be_immutable
class CommonAlertBox extends StatelessWidget {

  String text;
 
    CommonAlertBox({required this.text,
  
    }
  );

  @override
  Widget build(BuildContext context) {
    return AlertBox(
      widget: Wrap(children: [
        Column(
          children: [
            Container(
             
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
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Text(text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
           SizedBox(
             height: 20,
           ),
            MaterialButton(
              color: Color(0XFF0A37E0),
             onPressed: (){
               Navigator.pop(context);
             },
              child: Text(
                'OK',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
            ),
           
          ],
        ),
      ]),
    );
  }
}
