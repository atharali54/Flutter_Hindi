import 'package:flutter/material.dart';

class ActionEx05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            ' Action with onPress',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ActionEx05()));
              },
              icon: Icon(Icons.stairs),
            ),
            IconButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ActionEx05()));
              },
              icon: Icon(Icons.settings),
            ),
          ]),
      body: Center(
        child: Container(
          child: Text(
            'Hi',
            style: TextStyle(fontSize: 30, color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
