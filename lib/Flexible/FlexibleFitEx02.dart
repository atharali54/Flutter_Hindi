import 'package:flutter/material.dart';

class FlexibleEx02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Tight'),
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
              fit: FlexFit.tight,
              // fit: FlexFit.loose,
              // flex: 1,
              child: Container(
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
