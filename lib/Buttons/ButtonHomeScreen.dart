import 'package:flutter/material.dart';
import 'package:flutter_hindi/Buttons/ButtonsEx01.dart';
import 'package:flutter_hindi/Buttons/FloatingHomeScreen.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ButtonHomeScreen extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 20.0,
      fontStyle: FontStyle.italic,
      color: Colors.brown,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'बटन (Botton)',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              'बटन ग्राफिकल control element हैं जो users को किसी घटना को ट्रिगर करने के लिए प्रदान करते हैं जैसे कि  taking action, making choice, searching, और बहुत कुछ। उन्हें हमारे UI में कहीं भी रखा जा सकता है जैसे डायलॉग, फॉर्म, कार्ड, टूलबार आदि।\nबटन fluter विजेट हैं, जो meterial design library का एक हिस्सा है। Flutter कई प्रकार के बटन प्रदान करता है जिनमें विभिन्न shape, style और विशेषताएं होती हैं।',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' बटन के प्रकार ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Button01()));
              },
              child: Text(
                'Elevated & Flat Button',
                style: TextStyle(
                  // color: Colors.green,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Button02()));
              },
              child: Text(
                'Floating Point Button',
                style: TextStyle(
                  // color: Colors.green,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          mydivider,
          ElevatedButton(
              child: Icon(FontAwesomeIcons.videoSlash),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAppVideo()));
              }),
          mydivider,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class MyAppVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button VIDEO'),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: '617Ej0D3gHc',
          flags: YoutubePlayerFlags(autoPlay: true, mute: false),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class Button01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ButtonsEx01(), sourceFilePath: 'lib/Buttons/ButtonsEx01.dart'),
    );
  }
}

class Button02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: FloatingEx01(),
          sourceFilePath: 'lib/Buttons/FloatingHomeScreen.dart'),
    );
  }
}
