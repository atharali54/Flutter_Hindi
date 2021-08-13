import 'package:flutter/material.dart';

class PaddingQueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Short Que/Ans'),
      ),
      body: ListView(children: [
        Text(
          'PADDING QUESTIONS',
          style: TextStyle(fontSize: 40),
        ),
      ]),
    );
  }
}
