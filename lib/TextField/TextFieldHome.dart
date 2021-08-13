import 'package:flutter/material.dart';
//import 'package:flutter_hindi/Container/ContainerQueScreen.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/TextField/TextFieldDynamicEx03.dart';
import 'package:flutter_hindi/TextField/TextFieldEx01.dart';
import 'package:flutter_hindi/TextField/TextFieldEx02.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class TextFieldHome extends StatelessWidget {
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
          'टेक्स्टफिल्ड',
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
            child: Text('टेक्स्टफिल्ड (TextField)', style: mytextstyle),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              "Flutter में टेक्स्टफिल्ड एक विजेट है जो आपको keyboard से user को  इनपुट प्राप्त करने में help करता है। यह HTML में इनपुट  'टेक्स्ट' के समान है।",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.all(4),
          //   alignment: Alignment.center,
          //   child: Text(
          //     'टेक्स्ट विजेट के प्रकार (2)',
          //     style: TextStyle(
          //         fontSize: 20.0,
          //         color: Colors.brown,
          //         fontWeight: FontWeight.bold,
          //         fontStyle: FontStyle.italic),
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.all(4),
          //   //alignment: Alignment.center,
          //   child: Text(
          //     ' Simple Text और Rich Text',
          //     style: TextStyle(
          //         fontSize: 20.0,
          //         color: Colors.green,
          //         fontStyle: FontStyle.italic),
          //   ),
          // ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' Properties ',
              style: mytextstyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'TextAlign, TextDirection, Overflow, Style, TextScaleFactor, SoftWrap, MaxLine, TextHeightBehavior ',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          mydivider,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Basic Code',
                style: mytextstyle,
              ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text('TextField'),
                              content: Image.asset('assets/textfield.jpeg'),
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
            child: Text(
              'Examples',
              style: mytextstyle,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 4),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextField02(),
                    ),
                  );
                },
                child: Text(
                  'Only Tetxfield  Ex01',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextField01(),
                    ),
                  );
                },
                child: Text('Condition Tetxfield  Ex02',
                    style: TextStyle(color: Colors.white))),
          ),

          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextFieldDynamic03(),
                    ),
                  );
                },
                child: Text('Dynamic Properties',
                    style: TextStyle(color: Colors.white))),
          ),

          mydivider,

          // mydivider,
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

class TextField01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TextFieldEx01(),
          sourceFilePath: 'lib/TextField/TextFieldEx01.dart'),
    );
  }
}

class TextField02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TextFieldEx02(),
          sourceFilePath: 'lib/TextField/TextFieldEx02.dart'),
    );
  }
}

class TextFieldDynamic03 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: TextFieldDynamicEx03(),
          sourceFilePath: 'lib/TextField/TextFieldDynamicEx03.dart'),
    );
  }
}
