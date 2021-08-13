import 'package:flutter/material.dart';
//import 'package:flutter_hindi/Container/ContainerQueScreen.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/Opacity/OpacityEx01.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class OpacityHome extends StatelessWidget {
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
          'Opacity',
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
              ' Opacity ',
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
              '0.0 की Opacity का मतलब कोई Opacity नहीं है, यानी यह पूरी तरह से transparent है। यदि आप इसे पूरी तरह से अपारदर्शी बनाना चाहते हैं (अर्थात कोई पारदर्शिता नहीं), तो आप Opacity को 1.0 पर सेट करेंगे। 0.0 और 1.0 के बीच कुछ भी विजेट को आंशिक रूप से transparent बनाता है।',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' PROPERTIES (2)',
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
              'Child, Padding',
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
                              content: Image.asset('assets/opacity.jpeg'),
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
              ' Examples ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 2),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Opacity01()));
                },
                child: Text(
                  'Example 01',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
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
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class Opacity01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: OpacityEx01(), sourceFilePath: 'lib/Opacity/OpacityEx01.dart'),
    );
  }
}
