import 'package:flutter/material.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/UrlLauncher/UrlLauncherEx01.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class UrlLauncherHome extends StatelessWidget {
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
        title: Text('UrlLauncher'),
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
              ' यूआरएल लॉन्चर (URL Launcher)',
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
              'मोबाइल एप्लिकेशन विकसित करते समय, कई बार ऐसा होता है जब हमें आपके एप्लिकेशन के बाहर intract करना पड़ता है, तो इसे achieve करने के लिए Flutter url_launcher पैकेज का उपयोग करके कर सकते  है।',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Dependency (pubspec.yaml)',
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
              ' url_launcher: ^5.7.10',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'इम्पोर्ट पैकेज ',
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
              "import 'package:url_launcher/url_launcher.dart';",
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Basic Code',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text('Image Assets'),
                              content: Image.asset('assets/align.JPG'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('OK'))
                              ],
                            )),
                    child: Icon(
                      Icons.image,
                      size: 30,
                      color: Colors.orange,
                    ),
                  )),
            ],
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
                      MaterialPageRoute(builder: (context) => UrlLauncher01()));
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(
          Icons.first_page,
          color: Colors.white,
        ),
      ),
    );
  }
}

// class UrlLauncher01 extends StatelessWidget {
//   // @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: WidgetWithCodeView(
//           child: UrlLauncherEx01(),
//           sourceFilePath: 'lib/UrlLauncher/UrlLauncherEx01.dart'),
//     );
//   }
// }

class UrlLauncher01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: UrlLauncherEx01(),
          sourceFilePath: 'lib/UrlLauncher/UrlLauncherEx01.dart'),
    );
  }
}
