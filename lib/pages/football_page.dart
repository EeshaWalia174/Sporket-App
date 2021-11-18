import 'package:flutter/material.dart';
import 'package:sporket/pages/football_details.dart';

class FootballPage extends StatelessWidget {
  const FootballPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
              
                height: MediaQuery.of(context).size.height * 0.740,
                width: MediaQuery.of(context).size.width * 0.985,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 35.0, top: 5),
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext conntext, int index) {
                        return Container(
                         
                          height: MediaQuery.of(context).size.height * 0.230,
                          child: Card(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FootballDetailsPage()));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Column(children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: Image.asset('assets/i2.jpg'),
                                    title: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'ICC World Cup',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Regular Champoionship',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    trailing: Text(''),
                                  ),
                                  Divider(
                                    height: 20,
                                  ),
                                  ListTile(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Popularity',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Montserrat'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0, left: 1),
                                              child: Card(
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child:
                                                      LinearProgressIndicator(
                                                          value: 0.4,
                                                          backgroundColor:
                                                              Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(children: [
                                          Text(
                                            'Overall Rating',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Montserrat'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0, right: 18),
                                            child: Card(
                                              color: Colors.green,
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: LinearProgressIndicator(
                                                    value: 0.7,
                                                    color: Colors.orange,
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                          )
                                        ])
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
