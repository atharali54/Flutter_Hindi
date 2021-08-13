import 'package:flutter/material.dart';
//import 'package:flutter_hindi/Container/ContainerQueScreen.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/Padding/PaddingEx01.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class PaddingHomeScreen extends StatelessWidget {
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
          'Padding',
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
              ' पैडिंग (PADDING)',
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
              'Flutter में पैडिंग विजेट ठीक वही करता है जो उसका नाम कहता है, यह एक विजेट  के आसपास पैडिंग या खाली जगह जोड़ता है। \n इस विजेट का उपयोग कंटेनर की सीमा (चारों दिशाओं) और उसके child के विजेट के बीच की दूरी को निर्धारित करने के लिए किया जाता है।',
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
                  fontSize: 20.0,
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
                  builder: (context) => Padding01(),
                ),
              );
            },
          ),
          mydivider,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Padding'),
                    content: Image.asset('assets/padding.JPG'),
                    actions: <Widget>[
                      Text(
                          " padding: EdgeInsets.fromLTRB(20, 30, 10, 15),\n Padding: EdgeInsets.all(4),\n padding: EdgeInsets.only(left: 50),"),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                child: const Text('Show Dialog'),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: ElevatedButton(
                    // key: keys[4],
                    //color: Colors.teal,
                    child: Text(
                      'Asset Giffy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => AssetGiffyDialog(
                                //onlyOkButton: true,
                                onlyCancelButton: true,
                                buttonCancelText: Text('Close'),
                                image: Image.asset(
                                  'assets/padding.JPG',
                                  //fit: BoxFit.fill,
                                ),
                                title: Text(
                                  'Padding Code',
                                  textAlign: TextAlign.center,
                                ),
                                entryAnimation: EntryAnimation.TOP_LEFT,
                                description: Text(
                                  " padding: EdgeInsets.fromLTRB(20, 30, 10, 15),\n Padding: EdgeInsets.all(4),\n padding: EdgeInsets.only(left: 50),",
                                  style: TextStyle(fontSize: 14.0),
                                ),
                                onOkButtonPressed: () {},
                              ));
                    }),
              ),
            ],
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

class Padding01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: PaddingEx01(), sourceFilePath: 'lib/Padding/PaddingEx01.dart'),
    );
  }
}
