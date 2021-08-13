import 'package:flutter/material.dart';
import 'package:flutter_hindi/Functions.dart';

class StadiumBorderEx02 extends StatefulWidget {
  @override
  _TitleCenterEx01State createState() => _TitleCenterEx01State();
}

class _TitleCenterEx01State extends State<StadiumBorderEx02> {
  bool centerTitleVal = false;
  double slitoolbar = 50.0;
  double sliwidth = 2;
  Color mycolor = Colors.orange;
  Color bordercolor = Colors.limeAccent;
  BorderStyle style = BorderStyle.solid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: centerTitleVal,
        toolbarHeight: slitoolbar,
        backgroundColor: mycolor,
        shape: StadiumBorder(
            side:
                BorderSide(color: bordercolor, width: sliwidth, style: style)),
        title: Text(
          'AppBar',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.cyan,
        child: Text(
          'backgroundColor,\ntoolbarHeight,\n centerTitle,\n shape',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      )),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Container(
      color: Colors.orange[100],
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustColor(
              propText: 'backgroundColor:',
              startColor: mycolor,
              onValueChange: (val) {
                setState(() {
                  mycolor = val;
                });
              }),
          HinSlider(
              width: 260,
              propName: 'width',
              onValueChange: (val) {
                setState(() {
                  sliwidth = val;
                });
              },
              min: 1,
              max: 150,
              divide: 40,
              sliderVal: sliwidth),
          HinSlider(
              width: 260,
              propName: 'toolbarHeight',
              onValueChange: (val) {
                setState(() {
                  slitoolbar = val;
                });
              },
              min: 1,
              max: 150,
              divide: 40,
              sliderVal: slitoolbar),
          CusDropdown(
              datatype: BorderStyle.values,
              defaultVal: style,
              propText: 'style:',
              onValueChanged: (val) {
                setState(() {
                  style = val;
                });
              })
        ],
      ),
    );
  }
}
