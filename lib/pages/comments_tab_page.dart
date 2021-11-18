import 'package:flutter/material.dart';
import 'package:sporket/pages/commentsMessagePage.dart';

class CommentsTabPage extends StatelessWidget {
  const CommentsTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0XFF0A37E0),
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) => CommentMessageBox(),
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                      child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/i2.jpg')),
                      title: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )),
                );
              }),
        ));
  }
}
