import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/ListWheelScroll/ListViewScrollEx01.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class ListWheelHome extends StatelessWidget {
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
          'ListWheelScroolView',
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
            child: Text('   (ListWheelScroolView)', style: mytextstyle),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              "ListWheelScrollView वर्ग मूल रूप से एक विजेट है जो लगभग ListView विजेट के समान है लेकिन list में extra 3-D effect है जो इसे अधिक attractive, stylish, और advance बनाता है। ",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(' Properties (4)', style: mytextstyle),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'Child, HeightFactor, WidthFactor, Alignment',
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
                              title: Text('ProgressBar'),
                              content: Image.asset('assets/listWheel.JPG'),
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
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListWheel01()));
              },
              child: Text(
                'Examples',
                style: TextStyle(color: Colors.white),
              )),
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

class ListWheel01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WidgetWithCodeView(
              child: ListWheelEx01(),
              sourceFilePath: 'lib/ListWheelScroll/ListViewScrollEx01.dart'),
        ],
      ),
    );
  }
}
