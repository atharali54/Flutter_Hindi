import 'package:flutter/material.dart';

import 'package:flutter_hindi/SplashScreen/SplashHomeScreen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SplashHomeScreen()));
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.orange,
        ),
      ),
      body: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 2,
        //  navigateAfterSeconds: SplashHomeScreen(),
        title: Text(
          'SPLASH SCREEN  ',
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
        loaderColor: Colors.white);
  }
}
