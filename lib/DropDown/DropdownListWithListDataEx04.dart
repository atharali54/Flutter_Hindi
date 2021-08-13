// \lib\DropDown\DropdownListWithListDataEx04.dart
import 'package:flutter/material.dart';

class DropdownEx04 extends StatefulWidget {
  @override
  _ContainerDropdownState createState() => _ContainerDropdownState();
}

class _ContainerDropdownState extends State<DropdownEx04> {
  int _selectedItem = 0;
  // List<Color> myColor = [Colors.white, Colors.red, Colors.blue, Colors.green];
  // List<String> myColorName = ['white', 'red', 'blue', 'green'];
  List<dynamic> list2 = [
    [
      Colors.white,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.yellow
    ],
    ['WHITE', 'RED', 'BLUE', 'GREEN', 'ORANGE', 'YELLOW'],
    [200, 150, 100, 80, 50, 300]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data in two list '),
      ),
      body: Center(
        child: Container(
          width: 420,
          height: 500,
          color: Colors.cyan[100],
          child: Column(
            children: [
              Text(
                'डाटा  लिस्ट के अंदर लिस्ट("[[]]")use  होने पर dropdown का उदहारण ',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
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
                        DropdownMenuItem(
                          child: Text(list2[1][3]),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text(list2[1][4]),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Text(list2[1][5]),
                          value: 5,
                        ),
                      ])),
              //--------------------display container -------
              Center(
                child: Container(
                  child: Text(
                    list2[1][_selectedItem],
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                    textAlign: TextAlign.center,
                  ),
                  width: list2[2][_selectedItem],
                  height: list2[2][_selectedItem],

                  //color: list2[0][1],
                  color: list2[0][_selectedItem],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
