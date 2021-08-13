import 'package:flutter/material.dart';

class DialogEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DialogBox'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: Text('data'),
      )),
    );
  }
}
