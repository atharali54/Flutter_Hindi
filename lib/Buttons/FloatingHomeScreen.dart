import 'package:flutter/material.dart';
//import 'package:flutter_hindi/Container/ContainerQueScreen.dart';

class FloatingEx01 extends StatefulWidget {
  @override
  _FloatingEx01State createState() => _FloatingEx01State();
}

class _FloatingEx01State extends State<FloatingEx01> {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );

  final mytextstyle = TextStyle(
      fontSize: 20.0,
      fontStyle: FontStyle.italic,
      color: Colors.brown,
      fontWeight: FontWeight.bold);

  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button Ex01'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.brown,
          child: Text(
            'Floating  Click - $count',
            style: TextStyle(
              // color: Colors.green,
              color: Colors.white, fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: "Go Back",
        onPressed: () => {incrementCounter()},
        child: Icon(Icons.cloud_circle),
      ),
    );
  }
}
