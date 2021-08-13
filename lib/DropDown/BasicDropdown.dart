import 'package:flutter/material.dart';

class BasicExample extends StatefulWidget {
  @override
  _BasicExampleState createState() => _BasicExampleState();
}

class _BasicExampleState extends State<BasicExample> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Basic',
          ),
        ),
        body: Center(
          child: DropdownButton(
              value: _value, //_value variable define
              items: [
                DropdownMenuItem(
                  child: Text("First Item"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Second Item"),
                  value: 2,
                )
              ],
              onChanged: (int value) {
                setState(() {
                  _value = value;
                });
              },
              hint: Text("Select item")),
        ));
  }
}
