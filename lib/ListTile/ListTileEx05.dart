import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List name = [
    'Car',
    'Bus',
    'Bike',
  ];
  final myicon = [Icons.car_rental, Icons.bus_alert, Icons.ballot];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('2 ListView Builder Ex02'),
        ),
        body: Container(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(5),
                    child: ListTile(
                        title: Text(
                          '${name[index]}',
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Icon(
                          myicon[index],
                          color: Colors.red,
                        )),
                  );
                })),
      ),
    );
  }
}
