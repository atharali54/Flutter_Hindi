import 'package:flutter/material.dart';

class SimpleSliderEx03 extends StatefulWidget {
  @override
  _SimpleSliderEx03State createState() => _SimpleSliderEx03State();
}

class _SimpleSliderEx03State extends State<SimpleSliderEx03> {
  double sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Ex03'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Size :' + sliderVal.toInt().toString(),
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          Slider(
              min: 1,
              max: 100,
              divisions: 50,
              value: sliderVal,
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
