import 'package:flutter/material.dart';
import 'package:flutter_hindi/Align/AlignEx01.dart';
import 'package:flutter_hindi/Card/CardAssignment01.dart';
import 'package:flutter_hindi/Card/CardAssignment02.dart';
import 'package:flutter_hindi/Card/CardEx01.dart';
import 'package:flutter_hindi/Card/CardListTileEx03.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class CardHome extends StatelessWidget {
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
          'कार्ड',
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
              ' कार्ड (Card)',
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
              'Flutter में एक कार्ड गोल कोने के आकार में होता है और इसमें एक shadow होती है। ',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(' PROPERTIES (9)', style: mytextstyle),
          ),

          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'Child,borderOnForeground, clipBehavior, color, elevation, shadowColor, shape , margin ,semanticContainer',
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
                              content: Image.asset('assets/card.JPG'),
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
            alignment: Alignment.center,
            child: Text(' Examples', style: mytextstyle),
          ),

          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 2),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CardSimple01()));
                },
                child: Text(
                  'Simple Card',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 2),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardListTile03()));
                },
                child: Text(
                  'Card with ListTile',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                child: Text(
                  '  Card with GridView',
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
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 2),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardAssignment1()));
                },
                child: Text(
                  'Assignment',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
          // Container(
          //   padding: EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 2),
          //   child: ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => FittedBoxEx01()));
          //       },
          //       child: Text(
          //         'Example 02',
          //         style: TextStyle(fontSize: 16, color: Colors.white),
          //       )),
          // ),
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

class CardSimple01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WidgetWithCodeView(
              child: CardEx01(), sourceFilePath: 'lib/Card/CardEx01.dart'),
        ],
      ),
    );
  }
}

class CardListTile03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WidgetWithCodeView(
              child: CardListTileEx03(),
              sourceFilePath: 'lib/Card/CardListTileEx03.dart'),
        ],
      ),
    );
  }
}

class CardAssignment2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WidgetWithCodeView(
              child: CardAssignment02(),
              sourceFilePath: 'lib/Card/CardAssignment02.dart'),
        ],
      ),
    );
  }
}

class CardAssignment1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WidgetWithCodeView(
              child: CardAssignment01(),
              sourceFilePath: 'lib/Card/CardAssignment01.dart'),
        ],
      ),
    );
  }
}
