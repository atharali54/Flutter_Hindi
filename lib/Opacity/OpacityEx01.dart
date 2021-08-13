import 'package:flutter/material.dart';

class OpacityEx01 extends StatefulWidget {
  @override
  _OpacityEx01State createState() => _OpacityEx01State();
}

class _OpacityEx01State extends State<OpacityEx01> {
  // ignore: deprecated_member_use
  // final List<TextOverflow> _dropdownOverflow = [
  //   TextOverflow.clip,
  //   TextOverflow.visible,
  //   TextOverflow.ellipsis,
  //   TextOverflow.fade,
  // ];
  //TextOverflow _textOverflow =   TextOverflow.visible;

  // ignore: deprecated_member_use
  // TextOverflow _selectedTextOverflow = TextOverflow.visible;

  double sliderVal1 = 0.0;
  double sliderVal2 = 2.0;
  double opacity = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Opacity Example',
        ),
      ),
      body: Center(
        child: Opacity(
          opacity: opacity,
          child: Container(
            width: 300,
            height: 250,
            color: Colors.blue,
            child: Text('Opacity'),
          ),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text('Opacity:'),
          SizedBox(
              width: 160,
              child: Slider(
                value: opacity,
                min: 0,
                max: 1,
                divisions: 10,
                //  label: opacity.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    opacity = val;
                  });
                },
              )),
        ])
      ]),
    );
  }
}
