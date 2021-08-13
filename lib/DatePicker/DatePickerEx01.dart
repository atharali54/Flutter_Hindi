// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// lib\DatePicker\DatePickerEx01.dart
class DatePickerEx01 extends StatelessWidget {
  launchURL() {
    launch('https://kurukshetra.gov.in/');
  }

  launchURL2() {
    launch('https://www.google.com/');
  }

  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('डेटपिकर '),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'OnClick Button',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.brown,
                fontWeight: FontWeight.bold),
          ),
          Container(
              // width: 300,
              child: ElevatedButton(
                  onPressed: launchURL, child: Text('GO TO WEB'))),
          mydivider,
          SizedBox(
            height: 20,
          ),
          Text(
            'OnClick Container',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.brown,
                fontWeight: FontWeight.bold),
          ),
          Container(
              // width: 300,
              child: ElevatedButton(
                  onPressed: launchURL2, child: Text('GO TO WEB'))),
          mydivider,
        ],
      ),
    );
  }
}
