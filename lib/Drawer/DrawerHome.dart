import 'package:flutter/material.dart';
import 'package:flutter_hindi/Drawer/DrawerHeaderEx03.dart';
import 'package:flutter_hindi/Drawer/DrawerSimpleEx01.dart';
import 'package:flutter_hindi/Drawer/DrawerListTile.dart';
import 'package:flutter_hindi/Drawer/EndDrawer.dart';
//import 'package:flutter_hindi/Container/ContainerQueScreen.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/Padding/PaddingEx01.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class DrawerHome extends StatelessWidget {
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
          'ड्रावर',
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
              ' ड्रावर (Drawer)',
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
              'Drawer विजेट का उपयोग एक extra सब-राउटर के रूप में किया जाता है ,जिसमें एक ही एप्लिकेशन में अन्य पेजो के विभिन्न links होते हैं।  ',
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
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              'child, elevation, semanticLabel, key',
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
                              title: Text('Drawer'),
                              content: Image.asset('assets/drawer.JPG'),
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
          //EndDrawerEx01

          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                child: Text(
                  ' Simple Drawer',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SimpleDrawer01()));
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
                  'endDrawer  ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EndDrawer01()));
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
                  'DrawerHeader  ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrawerHeader03()));
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
                  '    Drawer ListTile',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrawerListTile()));
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
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class SimpleDrawer01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: SimpleDrawerEx01(),
          sourceFilePath: 'lib/Drawer/DrawerSimpleEx01.dart'),
    );
  }
}

class EndDrawer01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: EndDrawerEx01(), sourceFilePath: 'lib/Drawer/EndDrawer.dart'),
    );
  }
}

class DrawerHeader03 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DrawerHeaderEx03(),
          sourceFilePath: 'lib/Drawer/DrawerHeaderEx03.dart'),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DrawerEx02(),
          sourceFilePath: 'lib/Drawer/DrawerListTile.dart'),
    );
  }
}
