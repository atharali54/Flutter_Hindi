import 'package:flutter/material.dart';

class ConditionListTileEx02 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ConditionListTileEx02> {
  final List name = [
    'Car',
    'Bus',
    'Bike',
  ];
  final myicon = [Icons.car_rental, Icons.bus_alert, Icons.ballot];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Condition if elese'),
      ),
      body: Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: name.length,
              itemBuilder: (context, index) {
                return Container(
                  color: index % 2 == 0 ? Colors.green : Colors.red,
                  margin: EdgeInsets.all(5),
                  child: ListTile(
                      title: Text(
                        '${name[index]}',
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        myicon[index],
                        color: Colors.white,
                      )),
                );
              })),
    );
  }
}
