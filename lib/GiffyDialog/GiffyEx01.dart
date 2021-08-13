import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class GiffyEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          "GiffyDialog Example",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ignore: deprecated_member_use
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 2,
              ),
              width: double.infinity,
              child: ElevatedButton(
                  // key: keys[0],
                  // color: Colors.teal,
                  child: Text(
                    "Network Giffy",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => NetworkGiffyDialog(
                              //  key: keys[1],
                              image: Image.network(
                                "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                                fit: BoxFit.cover,
                              ),

                              entryAnimation: EntryAnimation.TOP_LEFT,
                              title: Text(
                                'Granny Eating Chocolate',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              description: Text(
                                'This is a granny eating chocolate dialog box. This library helps you easily create fancy giffy dialog.',
                                textAlign: TextAlign.center,
                              ),
                              onOkButtonPressed: () {},
                            ));
                  }),
            ),
            // ignore: deprecated_member_use
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 2,
              ),
              width: double.infinity,
              child: ElevatedButton(
                  //key: keys[2],
                  // color: Colors.teal,
                  child: Text(
                    'Flare Giffy',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => FlareGiffyDialog(
                              //  key: keys[3],
                              flarePath: 'assets/logo.png',
                              flareAnimation: 'loading',
                              title: Text(
                                'Falre Path',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              entryAnimation: EntryAnimation.DEFAULT,
                              description: Text(
                                'This is a space reloading dialog box. This library helps you easily create fancy flare dialog.',
                                textAlign: TextAlign.center,
                                style: TextStyle(),
                              ),
                              onOkButtonPressed: () {},
                            ));
                  }),
            ),
            // ignore: deprecated_member_use
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 2,
              ),
              width: double.infinity,
              child: ElevatedButton(
                  // key: keys[4],
                  // color: Colors.teal,
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
                              //   key: keys[5],
                              image: Image.asset(
                                'assets/logo.png',
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                'Men Wearing Jackets',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              entryAnimation: EntryAnimation.BOTTOM_RIGHT,
                              description: Text(
                                'This is a men wearing jackets dialog box. This library helps you easily create fancy giffy dialog.',
                                textAlign: TextAlign.center,
                                style: TextStyle(),
                              ),
                              onOkButtonPressed: () {},
                            ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
