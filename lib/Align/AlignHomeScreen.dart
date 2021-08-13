import 'package:flutter/material.dart';
import 'package:flutter_hindi/Align/AlignEx01.dart';
import 'package:flutter_hindi/Container/ContainerAlignmentEx03.dart';
import 'package:flutter_hindi/Align/FittedBoxEx01.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class AlignHomeScreen extends StatelessWidget {
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
          'अलाइन',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
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
              ' अलाइन  (Align)',
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
              ' यह एक विजेट है, जो अपने child के विजेट को अपने भीतर Align करता है और इसे child के आकार के आधार पर आकार देता है।\n यह child विजेट को ठीक उसी स्थिति में रखने के लिए अधिक नियंत्रण प्रदान करता है जहां आपको इसकी आवश्यकता होती है।',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' PROPERTIES (4)',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'Child, HeightFactor, WidthFactor, Alignment',
              style: TextStyle(fontSize: 20.0),
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
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 2),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContainerSimpleEx02()));
                },
                child: Text(
                  'Example',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 2),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FittedBoxEx01()));
                },
                child: Text(
                  'Example 02',
                  style: TextStyle(fontSize: 16, color: Colors.white),
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

class Align01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WidgetWithCodeView(
              child: AlignEx01(), sourceFilePath: 'lib/Align/AlignEx01.dart'),
        ],
      ),
    );
  }
}
