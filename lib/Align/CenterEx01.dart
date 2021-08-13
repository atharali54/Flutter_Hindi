import 'package:flutter/material.dart';
import 'package:flutter_hindi/Functions.dart';

void main() => runApp(CenterEx01());

class CenterEx01 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CenterEx01> {
  double sliderH = 0.0;
  double sliderW = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
      ),
      body: Container(
        // width: 350,
        // height: 350,
        //  color: Colors.green[300],
        child: Center(
          // heightFactor: sliderH,
          widthFactor: sliderW,
          child: Text('Hello World'),
        ),
      ),
      bottomNavigationBar: getBottom(),
    );
  }

  Widget getBottom() {
    return Container(
      color: Colors.orange[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HinSlider(
              width: 200,
              propName: 'HeightFactor',
              onValueChange: (val) {
                setState(() {
                  sliderH = val;
                });
              },
              min: 0,
              max: 100,
              divide: 50,
              sliderVal: sliderW),
          HinSlider(
              width: 200,
              propName: 'WidthFactor',
              onValueChange: (val) {
                setState(() {
                  sliderH = val;
                });
              },
              min: 0,
              max: 100,
              divide: 50,
              sliderVal: sliderW)
        ],
      ),
    );
  }
}
