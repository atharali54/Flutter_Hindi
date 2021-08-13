import 'package:flutter/material.dart';

class ResizeFontEx04 extends StatefulWidget {
  @override
  _ContainerFontState createState() => _ContainerFontState();
}

class _ContainerFontState extends State<ResizeFontEx04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        color: Colors.red,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Text(
            "How to dynamically resize text in Flutter?",
            //style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
