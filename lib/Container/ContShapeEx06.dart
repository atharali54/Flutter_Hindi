import 'package:flutter/material.dart';

class ShapeEx06 extends StatefulWidget {
  @override
  _DynamicEx01State createState() => _DynamicEx01State();
}

class _DynamicEx01State extends State<ShapeEx06> {
  BoxShape boxShape = BoxShape.rectangle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shape Example'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(color: Colors.red, shape: boxShape),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Colors.blue[200],
      child: Row(
        children: [
          Text('shape:'),
          DropdownButton(
              value: boxShape,
              onChanged: (dynamic newvalue) {
                setState(() {
                  boxShape = newvalue;
                });
              },
              items: BoxShape.values
                  .map((val) =>
                      DropdownMenuItem(value: val, child: Text(val.toString())))
                  .toList())
        ],
      ),
    );
  }
}
