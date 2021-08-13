import 'package:flutter/material.dart';
import 'package:flutter_hindi/Container/AnimatedContainerEx01.dart';
import 'package:flutter_hindi/Container/ContShadowEx07.dart';
import 'package:flutter_hindi/Container/ContShapeEx06.dart';
import 'package:flutter_hindi/Container/ContainerImageEx02.dart';
import 'package:flutter_hindi/Container/ContainerAlignmentEx03.dart';
import 'package:flutter_hindi/Container/OpacityEx05.dart';
import 'package:flutter_hindi/Container/ResizeTextFontEx04.dart';
import 'package:flutter_hindi/DialogBox/DialogBoxEx01.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class DialogBoxHome extends StatelessWidget {
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
          'कंटेनर',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
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
              '  (Dialog Box)',
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
              ' fgfgfgf ghgfgdgd ',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' PROPERTIES (9)',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'Child, ',
              style: TextStyle(fontSize: 14.0),
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
                            content: Image.asset('assets/dialog.jpg'),
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
                ),
              ),
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
                  ' Simple Dialog',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DialogEx01()));
                }),
          ),
          mydivider,
        ],
      ),
      //floatingActionButton: WidgetFab(),
      // floatingActionButton: FloatingActionButton(onPressed: (){},),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.orange,
      //   tooltip: "Go Back",
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => HomeScreen()));
      //   },
      //   child: Icon(
      //     Icons.first_page,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}

class ContainerAnimated extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: AnimatedContainerEx01(),
          sourceFilePath: 'lib/Container/AnimatedContainerEx01.dart'),
    );
  }
}

class SimpleContainer extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ContainerSimpleEx02(),
          sourceFilePath: 'lib/Container/ContainerSimpleEx03.dart'),
    );
  }
}

class ResizeFont extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ResizeFontEx04(),
          sourceFilePath: 'lib/Container/ResizeTextFontEx04.dart'),
    );
  }
}

class Opacity05 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: OpacityEx05(),
          sourceFilePath: 'lib/Container/OpacityEx05.dart'),
    );
  }
}

class ContainerImage02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ContainerImageEx02(),
          sourceFilePath: 'lib/Container/ContainerImageEx02.dart'),
    );
  }
}

class Shape06 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ShapeEx06(),
          sourceFilePath: 'lib/Container/ContShapeEx06.dart'),
    );
  }
}

class Shadow07 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ShadowEx07(),
          sourceFilePath: 'lib/Container/ContShadowEx07.dart'),
    );
  }
}
