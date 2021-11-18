import 'package:flutter/material.dart';
import 'package:sporket/pages/contest_page_details.dart';

class Upcomingcontest extends StatelessWidget {
  const Upcomingcontest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContestPageDetais()));
                },
                child: Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.150,
                    width: MediaQuery.of(context).size.width * 0.995,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 15, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                child: Image.asset('assets/mufc.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Text(
                                  "Vs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              CircleAvatar(
                                radius: 10,
                                child: Image.asset('assets/mcc.png'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Menchester City',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 10),
                              ),
                              Text(
                                'Menchester United',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Start Date 01 May 2021',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 10),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                'Timer 30 Mins',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Start Time 5:30 PM",
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
