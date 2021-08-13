import 'package:flutter/material.dart';
import 'package:flutter_hindi/Functions.dart';

class RoteatedBoxEx01 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<RoteatedBoxEx01> {
  double sliderQuarter = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RotatedBox',
        ),
      ),
      body: Center(
          child: RotatedBox(
        quarterTurns: sliderQuarter.toInt(),
        child: Text(
          'Flutter Hindi',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent),
        ),
      )),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Colors.blue[200],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              //Text('quarterTurns:'),
              HinSlider(
                propName: 'quarterTurns',
                width: 200,
                min: 1,
                max: 50,
                divide: 50,
                sliderVal: sliderQuarter,
                onValueChange: (val) {
                  setState(() {
                    sliderQuarter = val;
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
