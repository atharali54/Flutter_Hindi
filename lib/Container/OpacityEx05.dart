import 'package:flutter/material.dart';

class OpacityEx05 extends StatefulWidget {
  @override
  _DynamicEx01State createState() => _DynamicEx01State();
}

class _DynamicEx01State extends State<OpacityEx05> {
  // ignore: deprecated_member_use
  final List<TextOverflow> _dropdownOverflow = [
    TextOverflow.clip,
    TextOverflow.visible,
    TextOverflow.ellipsis,
    TextOverflow.fade,
  ];
  //TextOverflow _textOverflow =   TextOverflow.visible;

  // ignore: deprecated_member_use
  TextOverflow _selectedTextOverflow = TextOverflow.visible;

  double sliderVal1 = 0.0;
  double sliderVal2 = 2.0;
  double opacity = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TextOverflow Examples maxLines',
        ),
      ),
      body: Column(
        children: [
          // Text("Overflow: $_selectedTextOverflow"),
          //  Text("alignment: Alignment(${sliderVal1.toStringAsFixed(1)},"),
          Opacity(
            opacity: opacity,
            child: Container(
              width: 300,
              height: 50,
              color: Colors.red,
              child: Text('Opacity Property Examples'),
            ),
          ),
          Container(
            color: Colors.green,
            // height: 50,
            child: Text(
              "Kurukshetra is as old as the history of India. The history of the area in which Kurukshetra district lies can be traced back, howsoever dimly at times to the ancient Aryan Past. According to Dr. R.C. Majumdar, “it was a religion-cultural centre even before the immigration of the Aryans into India”",
              maxLines: int.parse(sliderVal2.toString()),
              overflow: _selectedTextOverflow,
              style: TextStyle(
                fontSize: sliderVal1,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(
          children: [
            Text('Opacity:'),
            SizedBox(
                width: 160,
                child: Slider(
                  value: opacity,
                  min: 0,
                  max: 1,
                  divisions: 10,
                  label: opacity.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      opacity = val;
                    });
                  },
                )),
            Text('fontSize:'),
            SizedBox(
                width: 160,
                child: Slider(
                  value: sliderVal1,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  label: sliderVal1.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      sliderVal1 = val;
                    });
                  },
                )),
          ],
        ),
        Text('maxLines:'),
        SizedBox(
            width: 160,
            child: Slider(
              value: sliderVal2,
              min: 0,
              max: 20,
              divisions: 10,
              label: sliderVal2.toStringAsFixed(1),
              onChanged: (val) {
                setState(() {
                  sliderVal2 = val;
                });
              },
            )),
        ListTile(
          title: const Text('overflow:'),
          trailing: DropdownButton(
            hint: Text('Select ...'),
            items: _dropdownOverflow
                .map((element) => DropdownMenuItem(
                      child: Center(
                        child: Text(element.toString()),
                      ),
                      value: element,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedTextOverflow = value;
              });
            },
            isExpanded: false,
            value: _selectedTextOverflow,
          ),
        ),
      ]),
    );
  }
}
