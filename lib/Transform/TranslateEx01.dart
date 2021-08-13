import 'package:flutter/material.dart';

class TransformEx01 extends StatefulWidget {
  @override
  _TransformEx01State createState() => _TransformEx01State();
}

class _TransformEx01State extends State<TransformEx01> {
  double sliOffsetX = 10.0;
  double sliOffsetY = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offset(X,Y)'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          child: Transform.translate(
            offset: Offset(sliOffsetX, sliOffsetY),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue[200],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(
          children: [
            Text('sliOffsetX:'),
            SizedBox(
                width: 260,
                child: Slider(
                  value: sliOffsetX,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  label: sliOffsetX.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      sliOffsetX = val;
                    });
                  },
                )),
          ],
        ),
        Text('sliOffsetY:'),
        SizedBox(
            width: 260,
            child: Slider(
              value: sliOffsetY,
              min: 0,
              max: 20,
              divisions: 10,
              label: sliOffsetY.toStringAsFixed(1),
              onChanged: (val) {
                setState(() {
                  sliOffsetY = val;
                });
              },
            )),
      ]),
    );
  }
}
