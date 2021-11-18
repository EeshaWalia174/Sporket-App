import 'package:flutter/material.dart';
import 'package:sporket/widgtes/AlertBox.dart';

class CommentMessageBox extends StatelessWidget {
  const CommentMessageBox({Key? key}) : super(key: key);

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
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Text('Share your valuable comments',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 5,
                child: TextField(
                  minLines: 6,
                  maxLines: 25,
                  decoration: InputDecoration(
                    hintText:
                        'imply dummy text of the printing and typesetting industry. Lorem Ipsum has been the in',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            MaterialButton(
              color: Color(0XFF0A37E0),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Submit',
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
