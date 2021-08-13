import 'package:flutter/material.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeScreen(),

      // Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
          seconds: 1,
          navigateAfterSeconds: HomeScreen(),
          title: Text(
            'Flutter हिंदी   ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          image: Image.asset('assets/images.png'),
          backgroundColor: Colors.orange,
          styleTextUnderTheLoader: TextStyle(fontSize: 30, color: Colors.white),
          photoSize: 100.0,
          loaderColor: Colors.white),
    );
  }
}
