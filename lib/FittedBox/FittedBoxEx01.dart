import 'package:flutter/material.dart';

class FittedBoxEx01 extends StatelessWidget {
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
          title: Text('Example 01'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                ' alignment: topRight, center',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
                width: 300,
                color: Colors.brown,
                child: const Align(
                  widthFactor: 1,
                  heightFactor: 4,
                  // alignment: Alignment.bottomCenter,
                  // // alignment: Alignment.centerLeft,
                  // // alignment: Alignment.center,
                  alignment: Alignment.topRight,
                  child: const Text('Hindi Tutorial',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
            mydivider,
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                'widthFactor & heightFactor ',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
                width: 300,
                color: Colors.brown,
                child: const Align(
                  widthFactor: 1,
                  heightFactor: 3,

                  //alignment: Alignment.topLeft,
                  child: const Text('Hindi Tutorial',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
          ],
        ));
  }
}
