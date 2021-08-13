import 'package:flutter/material.dart';

class StackEx02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Index Stack'),
        ),
        body: Center(
          child: IndexedStack(
            index: 0,
            children: <Widget>[
              Container(
                height: 300,
                width: 400,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'First Widget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 250,
                width: 250,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Second Widget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        )); //Center);
  }
}
