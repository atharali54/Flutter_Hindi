import 'package:flutter/material.dart';

class ContainerSimpleEx02 extends StatefulWidget {
  @override
  _DynamicEx01State createState() => _DynamicEx01State();
}

class _DynamicEx01State extends State<ContainerSimpleEx02> {
  final List<Alignment> _dropdownAlignment = [
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];
  Alignment _selectedAlignment = Alignment.center;

  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dynamic Examples',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Text("(Container)alignment: $_selectedAlignment"),
          Container(
            color: Colors.red,
            height: 150,
            child: Align(
              alignment: _selectedAlignment,
              child: Text(
                "Kurukshetra",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Text(
              "(Align)alignment: Alignment(${sliderVal1.toStringAsFixed(1)}, ${sliderVal2.toStringAsFixed(1)})"),
          Container(
            color: Colors.blue,
            height: 150,
            child: Align(
              alignment: Alignment(sliderVal1, sliderVal2),
              child: Text(
                "Flutter Hindi",
                style: TextStyle(fontSize: 16),
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
        ListTile(
          title: const Text('alignment:'),
          trailing: DropdownButton(
            hint: Text('Select ...'),
            items: _dropdownAlignment
                .map((element) => DropdownMenuItem(
                      child: Center(
                        child: Text(element.toString()),
                      ),
                      value: element,
                    ))
                .toList(),
            onChanged: (Alignment value) {
              setState(() {
                _selectedAlignment = value;
              });
            },
            isExpanded: false,
            value: _selectedAlignment,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' x, y'),
            SizedBox(
                width: 160,
                child: Slider(
                  value: sliderVal1,
                  min: -1.0,
                  max: 1.0,
                  divisions: 10,
                  label: sliderVal1.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      sliderVal1 = val;
                    });
                  },
                )),
            SizedBox(
                width: 160,
                child: Slider(
                  value: sliderVal2,
                  min: -1.0,
                  max: 1.0,
                  divisions: 10,
                  label: sliderVal2.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      sliderVal2 = val;
                    });
                  },
                )),
          ],
        ),
      ]),
    );
  }
}
