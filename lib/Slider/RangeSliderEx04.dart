import 'package:flutter/material.dart';

class RangeEx04 extends StatefulWidget {
  @override
  _SimpleSliderEx03State createState() => _SimpleSliderEx03State();
}

class _SimpleSliderEx03State extends State<RangeEx04> {
  RangeValues sliderVal = RangeValues(10, 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Ex03'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Size :' + sliderVal.toString(),
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          RangeSlider(
              min: 1,
              max: 100,
              divisions: 50,
              values: sliderVal,
              onChanged: (val) {
                setState(() {
                  sliderVal = val;
                });
              }),
        ],
      ),
    );
  }
}
