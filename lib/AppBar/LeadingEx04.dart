import 'package:flutter/material.dart';

class LeadingEx04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Icon in Leading ',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.menu_book,
          color: Colors.white,
          size: 30,
        ),
      ),
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
