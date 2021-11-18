import 'package:flutter/material.dart';


import 'package:sporket/pages/notification_page.dart';

import 'package:sporket/pages/wallet.dart';


class TeamRulesPage extends StatefulWidget {
  @override
  _TeamRulesPageState createState() => _TeamRulesPageState();
}

class _TeamRulesPageState extends State<TeamRulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
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
                )),
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
          ]),
     
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              height: MediaQuery.of(context).size.height / 1.7,
             
              child: Card(
              
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        dense: true,
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -4),
                        title: Text(
                          'Rules of IPL',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize: 14),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Center(
                          child: Text(
                            '''1. Lorem Ipsum is simply dummy text of the printing.
2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
3. Lorem Ipsum is simply dummy text of the printing 
4. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
5. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
6. Lorem Ipsum is simply dummy text of the printing 
 ''',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 11,
                                fontFamily: 'Montserrat',
                                height: 2),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
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
