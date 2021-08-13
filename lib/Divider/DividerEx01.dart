import 'package:flutter/material.dart';

class DividerEx01 extends StatelessWidget {
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
          title: Text('Divider Example 01'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 300,
              color: Colors.blue,
              child: Text(
                'Widget One',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Divider(
              color: Colors.red,
              height: 25,
              thickness: 10,
              endIndent: 10,
              indent: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 300,
              color: Colors.pinkAccent,
              child: Text(
                'Widget Two',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ));
  }
}
