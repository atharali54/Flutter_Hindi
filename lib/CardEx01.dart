import 'package:flutter/material.dart';

class CardEx01 extends StatefulWidget {
  @override
  _CardEx01State createState() => _CardEx01State();
}

class _CardEx01State extends State<CardEx01> {
  bool boolVal1 = false;
  double sliderelevation = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Container(
        color: Colors.red,
        child: Card(
          borderOnForeground: boolVal1,
          margin: EdgeInsets.all(10),
          //shape: ShapeBorder.lerp(12, 0, 8),
          elevation: sliderelevation,
          child: Container(
              width: 320,
              height: 100,
              color: Colors.blue,
              child: Text('Hello World')),
        ),
      ),
      bottomNavigationBar: getBottomBar(),
    );
  }

  Widget getBottomBar() {
    return Container(
      padding: EdgeInsets.all(3),
      color: Colors.green[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text('elevation:'),
              SizedBox(
                  width: 130,
                  child: Slider(
                    value: sliderelevation,
                    min: 1,
                    max: 100,
                    divisions: 30,
                    label: sliderelevation.toStringAsFixed(1),
                    onChanged: (val) {
                      setState(() {
                        sliderelevation = val;
                      });
                    },
                  )),
              Text('reverse:'),
              Radio(
                  value: true,
                  groupValue: boolVal1,
                  onChanged: (bool value) {
                    setState(() {
                      boolVal1 = value;
                    });
                  }),
              Text('true'),
              Radio(
                  value: false,
                  groupValue: boolVal1,
                  onChanged: (bool value) {
                    setState(() {
                      boolVal1 = value;
                    });
                  }),
              Text('false'),
            ],
          ),
        ],
      ),
    );
  }
}
