import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class StatisticsGraphs extends StatelessWidget {
  const StatisticsGraphs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var confirmedData = [
      1.5,
      1.0,
      1.9,
      2.0,
      4.0,
      4.5,
      5.1,
      6.0,
    ];

    var activeData = [
      4.5,
      5.1,
      6.0,
      2.0,
      4.0,
      4.5,
      5.1,
      6.0,
    ];
    var recoveredData = [
      1.9,
      1.8,
      1.6,
      1.7,
      1.4,
      4.5,
      5.1,
      6.0,
    ];
    var deceasedData = [
      1.9,
      1.8,
      1.6,
      1.7,
      1.4,
      1.5,
      1.4,
      1.5,
    ];
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -65,
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 3,
                      shadowColor: Colors.black,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CONFIRMED',
                                style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '790',
                                    style: TextStyle(
                                      color: Colors.pink.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(
                                    Icons.arrow_upward_outlined,
                                    color: Colors.pink.shade600,
                                    size: 18,
                                  ),
                                  Text(
                                    '19',
                                    style: TextStyle(
                                      color: Colors.pink.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Sparkline(
                                data: confirmedData,
                                fallbackHeight: 20,
                                fallbackWidth: 20,
                                lineColor: Colors.pink.shade600,
                                pointColor: Colors.black,
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        height: 130.0,
                        width: 130.0,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Card(
                      elevation: 3,
                      shadowColor: Colors.black,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ACTIVE',
                                style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '626',
                                    style: TextStyle(
                                      color: Colors.blue.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(
                                    Icons.arrow_downward_outlined,
                                    color: Colors.blue.shade600,
                                    size: 18,
                                  ),
                                  Text(
                                    '9',
                                    style: TextStyle(
                                      color: Colors.blue.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Sparkline(
                                data: activeData,
                                fallbackHeight: 20,
                                fallbackWidth: 20,
                                lineColor: Colors.blue.shade600,
                                pointColor: Colors.black,
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        height: 130.0,
                        width: 130.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Card(
                      elevation: 3,
                      shadowColor: Colors.black,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'RECOVERED',
                                style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '67',
                                    style: TextStyle(
                                      color: Colors.green.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(
                                    Icons.arrow_upward_outlined,
                                    color: Colors.green.shade600,
                                    size: 18,
                                  ),
                                  Text(
                                    '17',
                                    style: TextStyle(
                                      color: Colors.green.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Sparkline(
                                data: recoveredData,
                                fallbackHeight: 20,
                                fallbackWidth: 20,
                                lineColor: Colors.green.shade600,
                                pointColor: Colors.black,
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        height: 130.0,
                        width: 130.0,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Card(
                      elevation: 3,
                      shadowColor: Colors.black,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DECEASED',
                                style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '18',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(
                                    Icons.arrow_upward_outlined,
                                    color: Colors.grey.shade700,
                                    size: 18,
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Sparkline(
                                data: deceasedData,
                                fallbackHeight: 20,
                                fallbackWidth: 20,
                                lineColor: Colors.grey.shade700,
                                pointColor: Colors.black,
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        height: 130.0,
                        width: 130.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
