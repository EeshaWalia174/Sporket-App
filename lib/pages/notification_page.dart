import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                //color: Colors.blue,
                height: MediaQuery.of(context).size.height * 0.800,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                       
                        },
                        child: Card(
                          
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 5),
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/i2.jpg')),
                            title: Text(
                              'FIFA',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'assets/imglogo.png',
                                    ),
                                    Text(
                                      'Matchester City',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/MatchesterCity.png',
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'assets/imglogo.png',
                                     
                                    ),
                                    Text('Manchester United',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
