import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sporket/pages/commentsMessagePage.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class FAQsTabPage extends StatefulWidget {
  const FAQsTabPage({Key? key}) : super(key: key);

  @override
  _FAQsTabPageState createState() => _FAQsTabPageState();
}

class _FAQsTabPageState extends State<FAQsTabPage> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();

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
          child: ListView(children: [
      ExpansionTileCard(
         // elevation: 5,
          key: cardA,
          title: Text(
            'Lorem Ipsum is simply dummy text?',
            style: TextStyle(color: Colors.black),
          ),
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Text(
                  """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.""",
                  // style: Theme.of(context)
                  //     .textTheme
                  //     .bodyText2!
                  //     .copyWith(fontSize: 16),
                ),
              ),
            ),
          ],
      ),

      ExpansionTileCard(
          key: cardB,
          title: Text(
            'Lorem Ipsum is simply dummy text?',
            style: TextStyle(color: Colors.black),
          ),
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Text(
                  """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.""",
                
                ),
              ),
            ),
          ],
      ),

//
    ]),
        ));
  }
}
