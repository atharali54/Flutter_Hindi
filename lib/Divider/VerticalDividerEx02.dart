import 'package:flutter/material.dart';

class DividerEx02 extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    height: 40,
    indent: 16,
    endIndent: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vertical Divider'),
        ),
        body: Center(
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              VerticalDivider(
                thickness: 5,
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ));
  }
}
