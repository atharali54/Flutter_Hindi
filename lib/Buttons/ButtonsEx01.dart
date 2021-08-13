import 'package:flutter/material.dart';

class ButtonsEx01 extends StatefulWidget {
  @override
  _ButtonsEx01State createState() => _ButtonsEx01State();
}

class _ButtonsEx01State extends State<ButtonsEx01> {
  final mydivider = Divider(
    thickness: 2,
    height: 50,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );

  int count = 0;
  int count2 = 0;
  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void incrementCounter2() {
    setState(() {
      count2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flat & Elevated Button'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              alignment: Alignment.center,
              child: Text(
                'Elevated Button',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () => {incrementCounter()},
              child: Text(
                'Elevated Button onPressed - $count',
                style: TextStyle(
                  // color: Colors.green,
                  fontSize: 20.0,
                ),
              ),
            ),
            ElevatedButton(
              onLongPress: () => {incrementCounter2()},
              onPressed: () {},
              child: Text(
                'Elevated LongPress - $count2',
                style: TextStyle(
                  // color: Colors.green,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              child: ElevatedButton(
                onPressed: () => {},
                child: Text(
                  '  Padding, Magin',
                  style: TextStyle(
                    // color: Colors.green,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            mydivider,
            Container(
              margin: EdgeInsets.all(4),
              alignment: Alignment.center,
              child: Text(
                ' FlatButton',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // ignore: deprecated_member_use

            Container(
              margin: EdgeInsets.all(20),
              width: 100,
              height: 100,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                gradient: new RadialGradient(
                  colors: [Colors.blue, Colors.indigo],
                ),
              ),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: null,
                child: Text(
                  'FlatButton',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  radius: 2,
                  colors: [
                    Colors.yellow,
                    Colors.blue,
                    Colors.green,
                    Colors.red,
                    Colors.blue,
                    Colors.blueGrey,
                  ],
                ),
              ),
              child: TextButton(
                child: new Text(
                  'Gradiant',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ));
  }
}
