import 'package:flutter/material.dart';

import 'package:flutter_hindi/API/ApiModelHome.dart';
import 'package:flutter_hindi/API/ApiSimpleHome.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

//import 'Model/Model01Ex01.dart';

class ApiHomeScreen extends StatelessWidget {
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
          'API(Application Prog. Interface)',
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
              'API(Application Programming Interface)',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              '  API की बात करे तो API एक बिच का सिस्टम है, यानि की हम अगर हमारे Phone में या Computer में कोई Application चलाते है तो जब Application Internet से जुड़ता है या उसके Connection में आता है तो वह एक Server पर Data भेजता है. Server उस Data को प्राप्त करता है, इस पर क्रिया करता है, जो काम आप चाहते हो वो करता है और फिर उस डाटा को आपके फ़ोन पर या आपके कंप्यूटर पर वापस भेजता है. यह सभी काम एक API के माध्यम से होता है. यानि API के बिना किसी भी Application का कार्य मुश्किल है.',
              style: TextStyle(
                fontSize: 16.0,
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
              'http: ^0.12.0+2\n   - assets/   \n- assets/FileName.json ',
              style: TextStyle(
                fontSize: 16.0,
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
              "For Remote Site:\n import 'dart:async';\nimport 'package:http/http.dart' as http;\n import 'package:flutter_hindi/API/LocalApi/OnlineModelEx02.dart';\n For Local:\nimport 'package:flutter/Services.dart';",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'API Method',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiSimpleHome()));
                },
                child: Text(
                  'Simple Home',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiModelHome()));
                },
                child: Text(
                  'Modele Home',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Steps मॉडल  Api (Local ) ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: RichText(
              text: TextSpan(
                  text: ' json file बनाये asssets फोल्डर  के  अंदर \n',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'pubspec file में  डिपेंडेंसी  ऐड  करे \n',
                    ),
                    TextSpan(
                      text:
                          ' jason file के  डाटा  को  कॉपी  करे  और  quick.io वेबसाइट  पर  code convert  करे इसके  बाद  एक model.dart फाइल  मे सेव  करे  \n',
                    ),
                    TextSpan(
                      text:
                          'Main file में   dependency import करे  और  stateful Widget उसे  करे  \n',
                    ),
                    TextSpan(
                      text:
                          'class का   Object Create करे और  एक Future function करते  करे  \n',
                    ),
                    TextSpan(
                      text: 'Use API लिंक  \n',
                    ),
                    TextSpan(
                      text: 'Data Map/Match करे  \n',
                    ),
                    TextSpan(
                      text: 'setState बनाये  \n',
                    ),
                    TextSpan(
                      text:
                          'InIt State create करे  और फंक्शन  कॉल करे और Output चेक करे  डाटा   debugPrint स्क्रीन में शो हो जाता है   \n',
                    ),
                  ]),
            ),
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

// class Splash02 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return WidgetWithCodeView(
//       child: SplashEx01(),
//       sourceFilePath: 'lib/SplashScreen/SplashEx01.dart',

//       /// [codeLinkPrefix] is optional. When it's specified, two more buttons
//       /// (open-code-in-browser, copy-code-link) will be added in the code view.
//       //codeLinkPrefix: 'https://github.com/<my_username>/<my_project>/blob/master/',
//     );
//   }
// }
