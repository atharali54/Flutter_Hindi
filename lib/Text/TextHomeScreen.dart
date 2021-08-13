import 'package:flutter/material.dart';
import 'package:flutter_hindi/Container/ContainerAlignmentEx03.dart';
//import 'package:flutter_hindi/Container/ContainerQueScreen.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/Text/DynamicFontSliderEx04.dart';
import 'package:flutter_hindi/Text/TextEx01.dart';
import 'package:flutter_hindi/Text/TextEx02.dart';
import 'package:flutter_hindi/Text/TextShadowEx03.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class TextHomeScreen extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 18.0,
      color: Colors.brown,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Widget',
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
              ' टेक्स्ट विजेट (Text)',
              style: mytextstyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              'Text विजेट स्क्रीन पर text दिखाने के लिए उपयोग  किया जाता है। \n हम textAlign प्रॉपर्टी का उपयोग करके Text विजेट को Align कर सकते है।, स्टाइल प्रॉपर्टी text के design की अनुमति देती है। \n जिसमें   Font, FontWeight , FontStyle, letter Spacing , Color और बहुत कुछ शामिल है। ',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Type (2)',
              style: mytextstyle,
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            //alignment: Alignment.center,
            child: Text(
              '1) Simple Text \n 2)Rich Text',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.green,
                  fontStyle: FontStyle.italic),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' Properties ',
              style: mytextstyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'TextAlign, TextDirection, Overflow, Style, TextScaleFactor, SoftWrap, MaxLine, TextHeightBehavior ',
              style: TextStyle(fontSize: 16.0),
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
                              title: Text('Image Assets'),
                              content: Image.asset('assets/textwidget.jpeg'),
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
              bottom: 2,
            ),
            child: ElevatedButton(
                child: Text(
                  ' Text (Example)',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Text01()));
                }),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                child: Text(
                  'Rich Text (Example)',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Text02()));
                }),
          ),
          // ContainerSimpleEx02
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                child: Text(
                  'Text Alignment',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContainerSimpleEx02()));
                }),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                child: Text(
                  'Text Shadow ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TextShadow03()));
                }),
          ),
          //TextShadowEx03
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                child: Text(
                  'Text FontSize,Maxline,Overflow Example',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DynamicFontProperty04()));
                }),
          ),

          // mydivider,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
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

class Text01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TextEx01Screen(), sourceFilePath: 'lib/Text/TextEx01.dart'),
    );
  }
}

class Text02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TextEx02Screen(), sourceFilePath: 'lib/Text/TextEx02.dart'),
    );
  }
}
//DynamicFontPropertyEx04

class DynamicFontProperty04 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DynamicFontPropertyEx04(),
          sourceFilePath: 'lib/Text/DynamicFontSliderEx04.dart'),
    );
  }
}

class TextShadow03 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TextShadowEx03(),
          sourceFilePath: 'lib/Text/DynamicFontSliderEx04.dart'),
    );
  }
}
