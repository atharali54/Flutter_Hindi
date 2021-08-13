import 'package:flutter/material.dart';

class DynamicFontPropertyEx04 extends StatefulWidget {
  @override
  _DynamicEx01State createState() => _DynamicEx01State();
}

class _DynamicEx01State extends State<DynamicFontPropertyEx04> {
  // ignore: deprecated_member_use
  final List<TextOverflow> _dropdownOverflow = [
    TextOverflow.clip,
    TextOverflow.visible,
    TextOverflow.ellipsis,
    TextOverflow.fade,
  ];

  // ignore: deprecated_member_use
  TextOverflow _selectedTextOverflow = TextOverflow.visible;

  double sliderVal1 = 0.0;
  double sliderVal2 = 2.0;

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
          Container(
            color: Colors.green,
            child: Text(
              "KurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetraukshethetraKurukshethetraraKurukshethetraKurukshethetraKurukshethetra",
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
            Text('FontSize'),
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
        Text('maxLines'),
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
          title: const Text('Overflow:'),
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
