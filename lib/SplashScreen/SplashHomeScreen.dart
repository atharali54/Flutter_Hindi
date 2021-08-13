import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/SplashScreen/SplashEx01.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class SplashHomeScreen extends StatelessWidget {
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
        title: Text(
          'Splash',
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
              '  स्प्लैश स्क्रीन   (Splash)',
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
              "  स्प्लैश स्क्रीन एक वेबसाइट पर एक introduction page होता है।\n जब हमारी  App ओपन होती है या किसी गेम या प्रोग्राम के लांच होने के दौरान देखी जा सकती है ",
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
              '  splashscreen: ^1.3.5   (leatest)',
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
              "import 'package:splashscreen/splashscreen.dart';",
              style: TextStyle(
                fontSize: 16.0,
                //fontWeight: FontWeight.bold
              ),
            ),
          ),
          mydivider,
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Splash02()));
              },
              child: Text('Spash 02')),
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

class Splash02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: SplashEx01(),
      sourceFilePath: 'lib/SplashScreen/SplashEx01.dart',

      /// [codeLinkPrefix] is optional. When it's specified, two more buttons
      /// (open-code-in-browser, copy-code-link) will be added in the code view.
      //codeLinkPrefix: 'https://github.com/<my_username>/<my_project>/blob/master/',
    );
  }
}
