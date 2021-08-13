import 'package:flutter/material.dart';

class ContainerQueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Short Que/Ans'),
      ),
      body: ListView(children: [
        Text(
          'CONTAINER QUESTIONS',
          style: TextStyle(fontSize: 40),
        ),
      ]),
    );
  }
}
