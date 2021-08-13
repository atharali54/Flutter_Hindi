import 'package:flutter/material.dart';

class Ex05 extends StatefulWidget {
  @override
  _Ex05State createState() => _Ex05State();
}

class _Ex05State extends State<Ex05> {
  List<String> fruitsName = ["Apple", "Banana", "Graphs", "Orange", "Mango"];
  String myfruits;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dropdown',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Dropdown String/Map Type1 Ex05'),
          ),
          body: Center(
            child: Text('data'),
            //   DropdownButton(
            //     items: myfruits.map(String ,),
            //     value: myfruits,
            //     hint: Text('i m hint'),
            //    // onChanged: ,
            //   ),
            // ),
          ),
        ));
  }
}
