import 'package:flutter/material.dart';
import 'package:flutter_hindi/Functions.dart';

class TitleCenterEx01 extends StatefulWidget {
  @override
  _TitleCenterEx01State createState() => _TitleCenterEx01State();
}

class _TitleCenterEx01State extends State<TitleCenterEx01> {
  bool centerTitleVal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: centerTitleVal,
        title: Text('AppBar'),
      ),
      body: Center(child: Container()),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Colors.orange[100],
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CusBool(
              propName: 'centerTile',
              fstText: 'true',
              secText: 'false',
              groupVal: centerTitleVal,
              onValueChange: (val) {
                setState(() {
                  centerTitleVal = val;
                });
              }),
        ],
      ),
    );
  }
}
