// lib/dropdown/DropdownWithListEx03.dart

import 'package:flutter/material.dart';

class DropdownListEx03 extends StatefulWidget {
  @override
  _ContainerDropdownState createState() => _ContainerDropdownState();
}

class _ContainerDropdownState extends State<DropdownListEx03> {
  int _selectedItem = 0;
  // List<Color> myColor = [Colors.white, Colors.red, Colors.blue, Colors.green];
  // List<String> myColorName = ['white', 'red', 'blue', 'green'];
  List<dynamic> list2 = [
    [Colors.white, Colors.red, Colors.blue, Colors.green],
    ['white', 'red', 'blue', 'green'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown get data on select example'),
      ),
      body: Column(
        children: [
          Container(
              height: 80,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              child: DropdownButton<dynamic>(
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value;
                    });
                  },
                  value: _selectedItem,
                  items: [
                    DropdownMenuItem(
                      child: Text(list2[1][0]),
                      value: 0,
                    ),
                    DropdownMenuItem(
                      child: Text(list2[1][1]),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(list2[1][2]),
                      value: 2,
                    ),
                  ])),
          //--------------------display container -------
          Container(
            child: Text(list2[1][_selectedItem]),
            width: 200,
            height: 200,
            //color: list2[0][1],
            color: list2[0][_selectedItem],
          )
        ],
      ),
    );
  }
}
