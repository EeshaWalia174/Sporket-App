import 'package:flutter/material.dart';

import 'package:sporket/pages/leaderBoardPage.dart';
import 'package:sporket/pages/rules_page.dart';
import 'package:sporket/pages/wallet.dart';

import 'package:sporket/tabs/games_page.dart';
import 'package:sporket/tabs/home_page.dart';

import 'package:sporket/tabs/result_page.dart';

import 'package:sporket/widgtes/nav_drawer.dart';

import 'notification_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routNAme = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> _pagesList = [
    {
      'screenName': HomePage(),
      'isWallet': true,
      'isBelIcon': true,
    },
    {
      'screenName': GamesPage(),
      'isWallet': true,
      'isBelIcon': true,
    },
    {
      'screenName': ResultPage(),
      'isWallet': true,
      'isBelIcon': true,
    },
    {
      'screenName': LeaderBoardPage(),
      'isWallet': true,
      'isBelIcon': true,
    },
    {
      'screenName': RulesPage(),
      'isWallet': true,
      'isBelIcon': true,
    },
  ];
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          if (_pagesList[_currentIndex]['isWallet'] == true)
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wallet()));
                },
                child: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.black,
                  size: 26.0,
                ),
              ),
            ),
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
            ),
          ),
        ],
      ),
      body: _pagesList[_currentIndex]['screenName'],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 9.0,
        unselectedFontSize: 9.0,
        // type: BottomNavigationBarType.shifting,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/home.png",
                  //color: Colors.blue,
                ),
              ),
            ),
            label: 'Home',
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/home.png",
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Games',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/games.png",
                  //color: Colors.blue,
                ),
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/games.png",
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/page.png",
                ),
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/page.png",
                  color: Colors.grey,
                ),
              ),
            ),
            label: 'Result',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/contest.png",
                  color: Colors.grey,
                ),
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/contest.png",
                ),
              ),
            ),
            label: 'Contest',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/paget.png",
                  color: Colors.grey,
                ),
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  "assets/paget.png",
                ),
              ),
            ),
            label: 'Rules',
          ),
        ],
      ),
    );
  }
}
