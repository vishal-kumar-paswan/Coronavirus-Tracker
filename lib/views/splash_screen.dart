import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF212B46),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset(
                'assets/coronavirus_icon.png',
              ),
            ),
            SizedBox(
              height: 28.0,
            ),
            Text(
              'Coronavirus Tracker',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0XFFFDB222B),
                fontFamily: 'Montserrat',
              ),
            )
          ],
        ),
      ),
    );
  }
}
