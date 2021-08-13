import 'package:flutter/material.dart';

class FlexibleEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Loose'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 400,
            color: Colors.red,
            child: Text('Height: 100'),
          ),
          Flexible(
              fit: FlexFit.loose,
              child: Container(
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
