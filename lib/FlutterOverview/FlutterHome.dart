import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

class FlutterHomeScreen extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final myQuestext = TextStyle(
    color: Colors.black,
    fontSize: 22,
  );
  final myAnstext = TextStyle(
    // color: Colors.black,
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              SizedBox(
                height: 14,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FlutterLogo(
                  size: 56,
                ),
                Text(
                  'Flutter ',
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.brown,
                      fontStyle: FontStyle.italic),
                )
              ]),
              SizedBox(
                height: 10,
              ),
              mydivider,
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text: 'Flutter क्या है? \n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "Flutter Google द्वारा बनाई गई एक ओपन-सोर्स UI सॉफ़्टवेयर डेवलपमेंट किट है। इसका उपयोग Android, iOS, Linux, Mac, Windows, Google Fuchsia, और वेब के लिए एक ही कोडबेस से क्रॉस प्लेटफॉर्म एप्लिकेशन विकसित करने के लिए किया जाता है।",
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
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
// TODO Implement this library.