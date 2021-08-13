import 'package:flutter/material.dart';
import 'package:flutter_hindi/Card/CardAssignment02.dart';
import 'package:flutter_hindi/GridView/GridViewAssgn01.dart';
import 'package:flutter_hindi/GridView/GridViewDynamicEx02.dart';
import 'package:flutter_hindi/GridView/GridViewEx01.dart';
import 'package:flutter_hindi/GridView/GridViewClipReactEx03.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class GridHomeScreen extends StatelessWidget {
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
        title: Text(
          'ग्रिड व्यू ',
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
              'ग्रिड व्यू (GRID VIEW)',
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
              'ग्रिड व्यू Flutter में एक विजेट है। जो आइटम को 2D में प्रदर्शित करता है। हम तब इसका इस्तेमाल करते हैं। जब हमें ग्रिड के फॉर्म आइटम्स को दिखाना होता है। हम उन पर टैप कर सकते हैं। और दूसरे पेज पर जाएं।\n इसमें हम अपनी आवश्यकता के अनुसार इमेज टेक्स्ट आइकन आदि ले सकते हैं। ग्रिड व्यू Flutter में एक विजेट है। जो आइटम को 2D में प्रदर्शित करता है। हम तब इसका इस्तेमाल करते हैं। जब हमें ग्रिड के फॉर्म आइटम्स को दिखाना होता है। हम उन पर टैप कर सकते हैं। और दूसरे पेज पर जाएं।\n इसमें हम अपनी आवश्यकता के अनुसार इमेज टेक्स्ट आइकन आदि ले सकते हैं। ग्रिड व्यू विजेट को स्क्रॉल  के लिए किया जाता है।  कग्रिड व्यू का उदाहरण देखने के लिए हमारे पास कई ऐसे ऐप हैं जैसे ई-कॉमर्स ऐप जैसे स्नैपडील आदि ।विजेट को स्क्रॉल  के लिए किया जाता है। ',
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
              ' Properties ',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              'Children, crossAxisCount, reverse, shrinkWrap, crossAxisSpacing, scrollDirection , childAspectRatio,  mainAxisSpacing, clipBehavior, controller, addAutomaticKeepAlives, addRepaintBoundaries, ',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          mydivider,
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
                              title: Text('GridView.Count'),
                              content: Image.asset('assets/gridcount.JPG'),
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
            child: Text(
              ' Examples',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                child: Text(
                  'Simple  GridView ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GridView01()));
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
                  '  GridView Ex02',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DynamicGrid02()));
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
                  '  GridView ClipRRect,',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClipReactEx03()));
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
                  '  GridView with Card',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardAssignment2()));
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
                  '  Assignment',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GridAssign1()));
                }),
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

//lib\GridView\GridViewHomeScreen.dart
class GridView01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: GridEx01(), sourceFilePath: 'lib/GridView/GridEx01.dart'),
    );
  }
}

class DynamicGrid02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DynamicGridEx02(),
          sourceFilePath: 'lib/GridView/GridViewDynamicEx02.dart'),
    );
  }
}

class ClipReactEx03 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: GridClipReactEx03(),
          sourceFilePath: 'lib/GridView/GridViewClipReactEx03.dart'),
    );
  }
}

class GridAssign1 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: GridAssign01(),
          sourceFilePath: 'lib/GridView/GridViewAssgn01.dart'),
    );
  }
}

class CardAssignment2 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: CardAssignment02(),
          sourceFilePath: 'lib/GridView/CardAssignment02.dart'),
    );
  }
}
