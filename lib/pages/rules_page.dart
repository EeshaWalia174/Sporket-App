import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:sporket/pages/team_rules_page.dart';
import 'package:sporket/widgtes/nav_drawer.dart';


class RulesPage extends StatefulWidget {
  @override
  _RulesPageState createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Rules for Playing",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  //color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.550,
              width: MediaQuery.of(context).size.width * 0.995,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15, top: 30),
                  child: Container(
               
                    height: MediaQuery.of(context).size.height * 0.500,
                    width: MediaQuery.of(context).size.width * 0.995,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TeamRulesPage()));
                            },
                            child: Card(
                                color: HexColor('#636876'),
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 5),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            AssetImage('assets/i2.jpg')),
                                    title: Text(
                                      'Rules for IPL.',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )),
                          );
                        }),

                    
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







































// import 'package:expansion_tile_card/expansion_tile_card.dart';
// import 'package:flutter/material.dart';



// class RulesPage extends StatefulWidget {
//   const RulesPage({Key? key}) : super(key: key);

//   @override
//   _RulesPageState createState() => _RulesPageState();
// }

// class _RulesPageState extends State<RulesPage> {
//   final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
//             child: ExpansionTileCard(
//               baseColor: Colors.white,
//               expandedColor: Colors.white,

//               key: cardA,
//               //leading:
//               title:
//                Row(
//                 children: [
//                   CircleAvatar(
//                     backgroundImage: AssetImage('assets/imge.png'),
//                     backgroundColor: Colors.transparent,
//                     radius: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'John Doe',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               '14 Jan',
//                               style:
//                                   TextStyle(color: Colors.black, fontSize: 10),
//                             ),
//                             SizedBox(width: 5),
//                             ImageIcon(
//                               AssetImage('assets/imgd.png'),
//                               size: 15,
//                               color: Colors.blue,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
              
//               subtitle: Text(
//                 'lorem ipsum lorem ipsum lorem \nlorem ipsum...',
//                 style: TextStyle(fontSize: 14, color: Colors.black),
//               ),

//               children: <Widget>[
//                 Divider(
//                   thickness: 5,
//                   color: Colors.blue[200],
//                 ),
//                 ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: AssetImage('assets/img14.png'),
//                     backgroundColor: Colors.transparent,
//                     radius: 25,
//                   ),
//                   title: Text(
//                     'Claire Burt reacted',
//                     style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: Text(
//                     '10 Sec ago',
//                     style: TextStyle(fontSize: 8),
//                   ),
//                   trailing: Icon(
//                     Icons.military_tech,
//                     color: Colors.green,
//                   ),
//                 ),
//                 Divider(),
//                 ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: AssetImage('assets/imga.png'),
//                     backgroundColor: Colors.transparent,
//                     radius: 25,
//                   ),
//                   title: Text(
//                     'Chris Evans commented "Wow, Nice shot !"',
//                     style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: Text(
//                     '10 secs ago',
//                     style: TextStyle(fontSize: 8),
//                   ),
//                   // trailing: Icon(
//                   //   Icons.military_tech,
//                   // ),
//                 ),
//                 Divider(),
//                 ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: AssetImage('assets/imgb.png'),
//                     backgroundColor: Colors.transparent,
//                     radius: 25,
//                   ),
//                   title: Text(
//                     '"Sanaa Hurst commented"Wow, Nice shot!',
//                     style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: Text(
//                     '10 secs ago',
//                     style: TextStyle(fontSize: 8),
//                   ),
//                   // trailing: Icon(
//                   //   Icons.military_tech,
//                   // ),
//                 ),
//                 Divider(),
//                 ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: AssetImage('assets/imgc.png'),
//                     backgroundColor: Colors.transparent,
//                     radius: 25,
//                   ),
//                   title: Text(
//                     'Drlene Booker reacted',
//                     style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: Text(
//                     '10 secs ago',
//                     style: TextStyle(fontSize: 8),
//                   ),
//                   trailing: Icon(
//                     Icons.emoji_events,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 Divider(),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//         ],
//       ),
//     );
//   }
// }
