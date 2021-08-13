import 'package:flutter/material.dart';
import 'package:flutter_hindi/Align/FittedBoxEx01.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class FittedHomeScreen extends StatelessWidget {
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
          'FittedBox',
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
              ' फिटेड बॉक्स  (FITTED BOX)',
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
              ' फिटेड बॉक्स child विजेट को scale और position के अनुसार फिट करता है ।',
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
              'Child, Fit, ClipBehavior, Alignment',
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
          ExpansionTile(
            //textColor: Colors.brown,
            //backgroundColor: Colors.blue[300],
            leading: Icon(Icons.list, size: 30),
            title: Text(
              " Examples",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            children: <Widget>[
              InkWell(
                child: ListTile(
                  leading: Icon(Icons.forward),
                  title: Text(
                    'Example 01',
                    style: mytextstyle,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FittedBox01(),
                    ),
                  );
                },
              ),
            ],
          ),
          mydivider,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(2),
                width: 120,
                height: 50,
                color: Colors.red,
                child: ElevatedButton(
                    child: Text(
                      ' VIDEOS',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }),
              ),
              Container(
                margin: EdgeInsets.all(2),
                width: 120,
                height: 50,
                color: Colors.red,
                child: ElevatedButton(
                    child: Text(
                      ' WEB',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }),
              ),
              Container(
                margin: EdgeInsets.all(2),
                width: 120,
                height: 50,
                color: Colors.red,
                child: ElevatedButton(
                    child: Text(
                      ' Que/Ans',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FittedBoxEx01()));
                    }),
              ),
            ],
          ),
          mydivider,
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

class FittedBox01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: FittedBoxEx01(),
          sourceFilePath: 'lib/FittedBox/FittedBoxEx01.dart'),
    );
  }
}
