import 'package:flutter/material.dart';
import 'package:flutter_hindi/AnimationTextKit/AnimationTextKitEx01.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class TextKitHomeScreen extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 18.0,
      fontStyle: FontStyle.italic,
      color: Colors.brown,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextKitHomeScreen'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(' एनिमेशनटेक्स्टकिट(AnimationTextKit)',
                style: mytextstyle),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              'एक Flutter पैकेज जिसमें कुछ सुंदर टेक्स्ट एनिमेशन का संग्रह होता है।',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text('Dependency (pubspec.yaml)', style: mytextstyle),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              'animated_text_kit: ^4.2.1',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text('इम्पोर्ट पैकेज ', style: mytextstyle),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              "import 'package:animated_text_kit/animated_text_kit.dart';",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          mydivider,
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: ElevatedButton(
                child: Text(
                  ' Example',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TextKit01()));
                }),
          ),
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
        title: Text('यू टूब प्लेयर'),
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

class TextKit01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TextKitEx01(),
          sourceFilePath: 'lib/AnimationTextKit/AnimationTextKitEx01.dart'),
    );
  }
}
//lib\AnimationTextKit\AnimationTextKitEx01.dart