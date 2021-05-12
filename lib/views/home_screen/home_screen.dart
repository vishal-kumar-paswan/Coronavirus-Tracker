import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF212B46),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Covid-19 Tracker',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'India',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Last updated 1 hour ago',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.white,
                        ),
                        Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.blue,
                        )
                      ],
                    )
                  ],
                ),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
