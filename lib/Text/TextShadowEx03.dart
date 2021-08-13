import 'package:flutter/material.dart';
import 'package:flutter_hindi/Functions.dart';

class TextShadowEx03 extends StatefulWidget {
  @override
  _TextShadowEx03State createState() => _TextShadowEx03State();
}

class _TextShadowEx03State extends State<TextShadowEx03> {
  double sliderR = 1.0;
  double sliderX = 1.0;
  double sliderY = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shadow',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'FLUTTER',
            style:
                TextStyle(fontSize: 80, fontWeight: FontWeight.bold, shadows: [
              Shadow(
                color: Colors.red,
                blurRadius: sliderR,
                offset: Offset(sliderX, sliderY),
              ),
              Shadow(
                color: Colors.green,
                blurRadius: sliderR,
                offset: Offset(sliderX, sliderY),
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.blue[100],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              HinSlider(
                  width: 140,
                  propName: 'blurRadius:',
                  onValueChange: (val) {
                    setState(() {
                      sliderR = val;
                    });
                  },
                  min: 1,
                  max: 30,
                  divide: 50,
                  sliderVal: sliderR),
            ],
          ),
          Row(
            children: [
              HinSlider(
                  width: 140,
                  propName: 'offset X:',
                  onValueChange: (val) {
                    setState(() {
                      sliderX = val;
                    });
                  },
                  min: 1,
                  max: 50,
                  divide: 50,
                  sliderVal: sliderX),
              HinSlider(
                  width: 200,
                  propName: 'offset Y:',
                  onValueChange: (val) {
                    setState(() {
                      sliderY = val;
                    });
                  },
                  min: 1,
                  max: 50,
                  divide: 50,
                  sliderVal: sliderY),
            ],
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
