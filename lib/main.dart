import 'package:coronavirus_tracker/views/home_screen/home_screen.dart';
import 'package:coronavirus_tracker/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(CoronaVirusTracker());

class CoronaVirusTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        Duration(
          seconds: 3,
        ),
      ),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash(),
          );
        else
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Homescreen(),
          );
      },
    );
  }
}
