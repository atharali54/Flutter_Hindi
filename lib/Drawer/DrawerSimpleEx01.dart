import 'package:flutter/material.dart';

class SimpleDrawerEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Drawer'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text(
            'HI',
            style: TextStyle(fontSize: 50, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
