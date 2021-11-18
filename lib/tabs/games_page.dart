import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sporket/pages/cricket_page.dart';
import 'package:sporket/pages/football_page.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage>
    with SingleTickerProviderStateMixin {
  List<Widget> myTabs() {
    return [
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: currentIndex == 0
                  ? Border.all(color: Colors.white)
                  : Border.all(color: HexColor('#E5E5E5'))),
          child: Tab(
            child: Text(
              "Cricket",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: currentIndex == 1
                  ? Border.all(color: Colors.white)
                  : Border.all(color: HexColor('#E5E5E5'))),
          child: Tab(
            child: Text(
              "Football",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: currentIndex == 2
                  ? Border.all(color: Colors.white)
                  : Border.all(color: HexColor('#E5E5E5'))),
          child: Tab(
            child: Text(
              "Tennis",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    ];
  }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs().length);
  }

  int currentIndex = 0;

  @override
  void dispose() {
    print(_tabController.index);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          currentIndex = _tabController.index;
        });
      }
    });
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(65.0),
            child: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                controller: _tabController,
                indicatorPadding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                labelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                tabs: myTabs(),
                indicatorColor: Colors.blue,
                indicatorWeight: 2.0,
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              CricketPage(),
              FootballPage(),
              FootballPage(),
            ],
          ),
        ));
  }
}
