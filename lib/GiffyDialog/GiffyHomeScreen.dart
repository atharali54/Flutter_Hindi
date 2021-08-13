import 'package:flutter/material.dart';
import 'package:flutter_hindi/GiffyDialog/GiffyEx01.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class GiffyHomeScreen extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'GiffyDialog',
          style: TextStyle(color: Colors.white),
        ),
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
              ' गिफ्फी डायलॉग   (GiffyDialog)',
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
              "गिफ्फी डायलॉग एक सुन्दर  कस्टम अलर्ट डायलॉग बॉक्स है , जो फैंसी अलर्ट डायलॉग से inspired है ,  \nइसका source कोड 100% डार्ट है, और सब कुछ /lib फ़ोल्डर में रहता है।",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Dependency ',
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
              ' giffy_dialog: ^1.8.0  (leatest)',
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
              "import 'package:giffy_dialog/giffy_dialog.dart';",
              style: TextStyle(
                fontSize: 16.0,
                //fontWeight: FontWeight.bold
              ),
            ),
          ),
          mydivider,
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Giffy01()));
                },
                child: Text(
                  'Example',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          mydivider,
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

class Giffy01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: GiffyEx01(),
      sourceFilePath: 'lib/GiffyDialog/GiffyEx01.dart',

      /// [codeLinkPrefix] is optional. When it's specified, two more buttons
      /// (open-code-in-browser, copy-code-link) will be added in the code view.
      //codeLinkPrefix: 'https://github.com/<my_username>/<my_project>/blob/master/',
    );
  }
}
// lib\GiffyDialog\GiffyEx01.dart