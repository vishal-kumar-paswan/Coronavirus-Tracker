import 'package:flutter/material.dart';

class StatisticsGraphs extends StatelessWidget {
  const StatisticsGraphs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  height: 12.0,
                ),
                Row(
                  children: [
                    Card(
                      elevation: 3,
                      shadowColor: Colors.black,
                      child: Container(
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
