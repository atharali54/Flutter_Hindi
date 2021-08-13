import 'package:flutter/material.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/ImageAsset/ImageAssetEx01.dart';
import 'package:flutter_hindi/ImageAsset/ImageDynamicEx02.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class ImageAssetHome extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 18.0,
      fontStyle: FontStyle.italic,
      color: Colors.brown,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'इमेज',
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
              ' इमेज  (Image Asset)',
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
              "  Flutter में   image assets उपलब्ध हैं ,assets एक फ़ाइल है जिसमें  static data include होता  हैं। Flutter अप्प में  image के कुछ  फॉर्मेट  support  करती  है , जिसमे मुख्य  JPEG, WebP, PNG, GIF, animated WebP/GIF, BMP, और WBMP है। \n इसमें हम इमेज फोल्डर, नेटवर्क , गूगल ड्राइव सभी जगहों  से इस्तेमाल कर  सकते है ।",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Dependency (pubspec.yaml)',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              'assets:\n   - assets/,',
              style: TextStyle(
                fontSize: 18.0,
              ),
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
                              content: Image.asset('assets/imagewidget.jpeg'),
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
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 2,
                  top: 2,
                ),
                width: double.infinity,
                child: ElevatedButton(
                    child: Text(
                      '  Simple Image Ex01',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImageAsset01()));
                    }),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 2,
                  top: 2,
                ),
                child: ElevatedButton(
                    child: Text(
                      '  Image Ex02',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DynamicImg02()));
                    }),
              ),
            ],
          ),
          // Container(
          //   padding: EdgeInsets.all(8),
          //   // margin: EdgeInsets.all(8),
          //   child: Text(
          //     " ",
          //     style: TextStyle(
          //       fontSize: 17.0,
          //     ),
          //   ),
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

class ImageAsset01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ImageAssetEx01(),
          sourceFilePath: 'lib/ImageAsset/ImageAssetEx01.dart'),
    );
  }
}

class DynamicImg02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DynamicImgEx02(),
          sourceFilePath: 'lib/ImageAsset/ImageDynamicEx02.dart'),
    );
  }
}


//lib\ImageAsset\ImageAssetEx01.dart