// \lib\DropDown\DropdownEx01.dart

import 'package:flutter/material.dart';

class DropDownEx01 extends StatelessWidget {
  const DropDownEx01({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomeScreen'),
      // ),
      body: Aliclass(),
    );
  }
}

class Aliclass extends StatefulWidget {
  Aliclass({Key key}) : super(key: key);

  @override
  _AliclassState createState() => _AliclassState();
}

class _AliclassState extends State<Aliclass> {
  String valueChoose1;
  String valueChoose2;

  List<String> listItem1 = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG"
  ];
  List<String> listItem2 = [
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dropdown List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
        children: [
          SizedBox(
            height: 20,
          ),
          // ElevatedButton(onPressed: () {}, child: Text('Button')),
          Container(
            padding: EdgeInsets.all(20),
            child: DropdownButton(
              hint: Text('Month'),
              isExpanded: false,
              value: valueChoose1,
              items: listItem1.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
              onChanged: (newvalue) {
                setState(() {
                  valueChoose1 = newvalue;
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: DropdownButton(
              hint: Text('Year'),
              isExpanded: false,
              value: valueChoose2,
              items: listItem2.map((valueItem2) {
                return DropdownMenuItem(
                  value: valueItem2,
                  child: Text(valueItem2),
                );
              }).toList(),
              onChanged: (newvalue) {
                setState(() {
                  valueChoose2 = newvalue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
