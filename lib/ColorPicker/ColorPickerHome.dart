import 'package:flutter/material.dart';
import 'package:flutter_hindi/ColorPicker/ColorPickerEx01.dart';
// ignore: unused_import
import 'package:flutter_hindi/DatePicker/DatePickerHome.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/UrlLauncher/UrlLauncherEx01.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class ColorPickerHome extends StatelessWidget {
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
        title: Text('ColorPicker'),
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
              'कलरपिकर  (ColorPicker)',
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
              "कलर पिकर एक Flutter विजेट है, जिसे customizable बनाया जा सकता है। डिफ़ॉल्ट रूप से, यह Material color है, लेकिन आप अपने स्वयं के रंगों को display कर सकते हैं। ",
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
              ' --',
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
              "--",
              style: TextStyle(
                fontSize: 17.0,
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ColorPickerEx01()));
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
