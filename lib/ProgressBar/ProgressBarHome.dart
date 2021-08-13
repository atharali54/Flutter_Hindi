import 'package:flutter/material.dart';
//import 'package:flutter_hindi/Align/AlignEx01.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/ProgressBar/CircularEx03.dart';
import 'package:flutter_hindi/ProgressBar/LinearEx01.dart';
import 'package:flutter_hindi/ProgressBar/ProgressBarEx02.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class ProgressBarHomeScreen extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 16.0,
      color: Colors.brown,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ProgressBar',
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
            child: Text(' प्रोग्रेस बार (ProgressBar)', style: mytextstyle),
          ),
          Container(
            height: 120,
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              'प्रोग्रेस बार एक ग्राफिकल कंट्रोल एलिमेंट है जिसका इस्तेमाल डाउनलोडिंग, अपलोडिंग, इंस्टालेशन, फाइल ट्रांसफर आदि जैसे टास्क की Progress को दिखाने के लिए किया जाता है।\n  ',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(' ProgressBar के  प्रकार (2)', style: mytextstyle),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              ' Linear (Determinate,Indeterminate)\n  Circular (Determinate,Indeterminate)',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: RichText(
              text: TextSpan(
                  text: 'Linear:',
                  style: mytextstyle,
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          ' एक Horizontal रेखा में कार्य की process को दिखाने के लिए उपयोग किया जाता है।\n',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    TextSpan(
                      text: ' Circular',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.brown,
                      ),
                    ),
                    TextSpan(
                      text:
                          '  यह किसी कार्य की प्रगति को circular आकार में दिखाता है। \n',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: ' Linear & Circular के  प्रकार (2)\n',
                        style: mytextstyle),
                    TextSpan(
                      text:
                          ' Determinate:- जब हम चल रहे कार्यों की प्रगति को दिखाना चाहते हैं जैसे कि डाउन का प्रतिशत फ़ाइलें लोड करना या अपलोड करना, आदि। \n',
                      style: TextStyle(
                        fontSize: 16.0,
                        //color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' Indeterminate:- जब हम किसी चल रही प्रक्रिया का प्रतिशत नहीं जानना चाहते हैं। \n',
                      style: TextStyle(
                        fontSize: 16.0,
                        // color: Colors.black,
                      ),
                    ),
                  ]),
            ),
          ),
          mydivider,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Basic Code', style: mytextstyle),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text('ProgressBar'),
                              content: Image.asset('assets/progress1.JPG'),
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
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(' Examples', style: mytextstyle),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Circular03()));
                },
                child: Text(
                  'CircularProgressIndicator',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Linear01()));
                },
                child: Text('LinearProgressIndicator',
                    style: TextStyle(color: Colors.white))),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProgressBar02()));
                },
                child: Text('OnClick Use indicator',
                    style: TextStyle(color: Colors.white))),
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

class Linear01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: LinearEx01(),
          sourceFilePath: 'lib/ProgressBar/LinearEx01.dart'),
    );
  }
}

class ProgressBar02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ProgressBarEx02(),
          sourceFilePath: 'lib/ProgressBar/ProgressBarEx02.dart'),
    );
  }
}

//CircularEx03
class Circular03 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: CircularEx03(),
          sourceFilePath: 'lib/ProgressBar/CircularEx03.dart'),
    );
  }
}
