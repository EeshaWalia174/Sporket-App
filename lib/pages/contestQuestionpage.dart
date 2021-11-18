import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sporket/pages/ContestQuestionPageConst.dart';
import 'package:sporket/pages/notification_page.dart';

class ContestQuestion extends StatefulWidget {
  @override
  _ContestQuestionState createState() => _ContestQuestionState();
}

class _ContestQuestionState extends State<ContestQuestion> {
  // ignore: unused_field
  bool _value = false;
  int val = -1;
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationPage()));
                },
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.timer),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '15:30',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        child: Image.asset('assets/Group.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '950',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ExpansionTileCard(
                elevation: 0,
                key: cardA,
                title: Text(
                  'Who will win the best batsman in the entire match ?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                  ),
                ),
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Divider(),
                    ),
                  ),
                  QuestionPage(coins: '600', points: '1000 points'),
                  QuestionPage(coins: '900', points: '7 points'),
                  QuestionPage(coins: '0', points: '0 points'),
                  QuestionPage(coins: '0', points: '7 points'),
                  QuestionPage(coins: '600', points: '7 points'),
                  QuestionPage(coins: '950', points: '7 points'),
                  QuestionPage(coins: '600', points: '1000 points'),
                ],
              ),
              ExpansionTileCard(
                elevation: 0,
                key: cardB,
                title: Text(
                  'Who will win the best batsman in the entire match ?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                  ),
                ),
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Divider(),
                    ),
                  ),
                  QuestionPage(coins: '600', points: '1000 points'),
                  QuestionPage(coins: '900', points: '7 points'),
                  QuestionPage(coins: '0', points: '0 points'),
                  QuestionPage(coins: '0', points: '7 points'),
                  QuestionPage(coins: '600', points: '7 points'),
                  QuestionPage(coins: '950', points: '7 points'),
                  QuestionPage(coins: '600', points: '1000 points'),
                ],
              ),
              ExpansionTileCard(
                elevation: 0,
                key: cardC,
                title: Text(
                  'Who will win the best batsman in the entire match ?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                  ),
                ),
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Divider(),
                    ),
                  ),
                  QuestionPage(coins: '600', points: '1000 points'),
                  QuestionPage(coins: '900', points: '7 points'),
                  QuestionPage(coins: '0', points: '0 points'),
                  QuestionPage(coins: '0', points: '7 points'),
                  QuestionPage(coins: '600', points: '7 points'),
                  QuestionPage(coins: '950', points: '7 points'),
                  QuestionPage(coins: '600', points: '1000 points'),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Divider(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
