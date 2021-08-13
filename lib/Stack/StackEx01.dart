import 'package:flutter/material.dart';

class StackEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.red,
                  ), //Container
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.black,
                  ), //Container
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                  ), //Container
                ], //<Widget>[]
              ), //Stack
            ), //Center
          ), //SizedBox
        )); //Center);
  }
}
