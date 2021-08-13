import 'package:flutter/material.dart';

class ShadowEx07 extends StatefulWidget {
  @override
  _ShadowEx07State createState() => _ShadowEx07State();
}

class _ShadowEx07State extends State<ShadowEx07> {
  Map<String, MaterialColor> cusColor = {
    "Red": Colors.red,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Yellow": Colors.yellow,
    "Orange": Colors.orange,
  };
  Color selectShadowColor = Colors.green;
  double cusBlurRedious = 10.0;
  double cusSpreadRadius = 10.0;
  double cusOffset1 = 10.0;
  double cusOffset2 = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Shadow '),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(color: Colors.red,
              // border: Border.all(10),
              boxShadow: [
                BoxShadow(
                    spreadRadius: cusSpreadRadius,
                    offset: Offset(cusOffset1, cusOffset2),
                    blurRadius: cusBlurRedious,
                    color: selectShadowColor)
              ]),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Container(
      color: Colors.blue[100],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Shadow color:',
                    style: TextStyle(color: Colors.orange),
                  )),
              DropdownButton(
                  onChanged: (dynamic newVal) {
                    setState(() => selectShadowColor = newVal);
                  },
                  value: selectShadowColor,
                  items: cusColor
                      .map(
                        (key, value) => MapEntry(
                          key,
                          DropdownMenuItem(
                            child: Text('Colors.' + key),
                            value: value,
                          ),
                        ),
                      )
                      .values
                      .toList())
            ],
          ),
          Row(
            children: [
              Text(
                'blurRadius:',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
              SizedBox(
                child: Slider(
                    min: 1,
                    max: 70,
                    divisions: 10,
                    value: cusBlurRedious,
                    onChanged: (blrval) {
                      setState(() {
                        cusBlurRedious = blrval;
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'spreadRadius:',
                style: TextStyle(color: Colors.orange),
              ),
              SizedBox(
                child: Slider(
                    min: 1,
                    max: 70,
                    divisions: 20,
                    value: cusSpreadRadius,
                    onChanged: (spreadval) {
                      setState(() {
                        cusSpreadRadius = spreadval;
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'offset(X,Y):',
                style: TextStyle(color: Colors.orange),
              ),
              SizedBox(
                child: Slider(
                    min: 1,
                    max: 70,
                    divisions: 20,
                    value: cusOffset1,
                    onChanged: (val) {
                      setState(() {
                        cusOffset1 = val;
                      });
                    }),
              ),
              SizedBox(
                child: Slider(
                    min: 1,
                    max: 70,
                    divisions: 20,
                    value: cusOffset2,
                    onChanged: (val) {
                      setState(() {
                        cusOffset2 = val;
                      });
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
