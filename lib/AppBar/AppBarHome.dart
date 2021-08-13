import 'package:flutter/material.dart';
import 'package:flutter_hindi/AppBar/ActionEx05.dart';
import 'package:flutter_hindi/AppBar/AppBarEx01.dart';
import 'package:flutter_hindi/AppBar/LeadingEx04.dart';
import 'package:flutter_hindi/AppBar/PopupMenuEx06.dart';
import 'package:flutter_hindi/AppBar/RoundedAppbarEx03.dart';
import 'package:flutter_hindi/AppBar/StadiumAppbarEx02.dart';
import 'package:flutter_hindi/AppBar/TabBarEx07.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class AppBarHome extends StatelessWidget {
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
          'ऐपबार',
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
              'ऐपबार (AppBar)',
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
              'AppBar भी फ़्लटर में एक  विजेट है। AppBar आमतौर पर ऐप का सबसे ऊपरी part होता है (या कभी-कभी सबसे नीचे), इसमें टूलबार और कुछ अन्य सामान्य क्रिया बटन  होते हैं।  ',
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
              'actions, title, backgroundColor, elevation, shape ',
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
                            title: Text('AppBar'),
                            content: Image.asset('assets/appbar.JPG'),
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
                  ' centerTitle',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TitleCenter01()));
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
                  ' Shape(StadiumBorder), width, toolbarHeight',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StadiumBorder02()));
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
                  ' Shape(Rounded), width, toolbarHeight',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RoundedAppbar03()));
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
                  ' Leading Icon',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Leading04()));
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
                  ' Action with onPress',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Action05()));
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
                  '  3 dot PopupMenu with PageRout',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PopupMenu06()));
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
                  '  Tab Bar ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TabBar07()));
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

class TitleCenter01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TitleCenterEx01(),
          sourceFilePath: 'lib/AppBar/AppBarEx01.dart'),
    );
  }
}

class StadiumBorder02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: StadiumBorderEx02(),
          sourceFilePath: 'lib/AppBar/StadiumAppbarEx02.dart'),
    );
  }
}

class RoundedAppbar03 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: RoundedAppbarEx03(),
          sourceFilePath: 'lib/AppBar/RoundedAppbarEx03.dart'),
    );
  }
}

class Leading04 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: LeadingEx04(), sourceFilePath: 'lib/AppBar/LeadingEx04.dart'),
    );
  }
}

class Action05 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ActionEx05(), sourceFilePath: 'lib/AppBar/ActionEx05.dart'),
    );
  }
}

class PopupMenu06 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: PopupMenuEx06(),
          sourceFilePath: 'lib/AppBar/PopupMenuEx06.dart'),
    );
  }
}

class TabBar07 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TabBarEx07(), sourceFilePath: 'lib/AppBar/TabBarEx07.dart'),
    );
  }
}
