import 'package:flutter/material.dart';
import 'package:flutter_hindi/DatePicker/DatePickerEx01.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class DatePickerHome extends StatelessWidget {
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
        title: Text('डेटपिकर'),
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
              ' डेटपिकर (DatePicker)',
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
              "डेटपिकर एक विजेट है जिसका उपयोग किसी तिथि का चयन करने के लिए किया जाता है। यह आपके Custom UI में दिन, महीने और साल के हिसाब से तारीख चुनने की अनुमति देता है। यदि हमें इस दृश्य को एक संवाद के रूप में दिखाने की आवश्यकता है तो हमें एक DatePickerDialog वर्ग का उपयोग करना होगा।",
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
              ' 11',
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
              " --",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DatePicker01()));
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

class DatePicker01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DatePickerEx01(),
          sourceFilePath: 'lib/DatePicker/DatePickerEx01.dart'),
    );
  }
}
