// lib\DropDown\OnSelectChangeContainerChangeColorEx02.dart
import 'package:flutter/material.dart';

class DropdownEx02 extends StatefulWidget {
  @override
  _ContainerDropdownState createState() => _ContainerDropdownState();
}

class _ContainerDropdownState extends State<DropdownEx02> {
  int _selectedItem = 0;
  List<Color> myColor = [Colors.white, Colors.red, Colors.blue, Colors.green];
  List<String> myColorName = ['white', 'red', 'blue', 'green'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ON SELECT CHANGE CONTAINER COLOR'),
        ),
        body: Column(
          children: [
            Container(
                height: 80,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                child: DropdownButton<int>(
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        _selectedItem = value;
                      });
                    },
                    value: _selectedItem,
                    items: [
                      DropdownMenuItem(
                        child: Text(myColorName[0]),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text(myColorName[1]),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text(myColorName[2]),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text(myColorName[3]),
                        value: 3,
                      )
                    ])),
            Container(
              width: 200,
              height: 200,
              color: myColor[_selectedItem],
            )
          ],
        ),
      ),
    );
  }
}
