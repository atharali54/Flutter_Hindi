import 'package:flutter/material.dart';

class DividerEx03 extends StatefulWidget {
  @override
  _DividerhorizState createState() => _DividerhorizState();
}

class _DividerhorizState extends State<DividerEx03> {
  double sliderval1 = 5;
  double sliderval2 = 20;
  double sliderval3 = 20;
  double sliderval4 = 20;
  bool boolval1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Divider'),
      ),
      body: _buildbody(),
      bottomNavigationBar: getNavigator(),
    );
  }

  Widget _buildbody() => Container(
      child: boolval1
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Text('Hello World'),
                ),
                VerticalDivider(
                  color: Colors.red,
                  // /  height: sliderval2,
                  thickness: sliderval1,
                  endIndent: sliderval3,
                  indent: sliderval4,
                  //key: ,
                ),
                Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text('hello wor11'),
                ),
              ],
            )
          : Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Text('Hello World'),
                ),
                Divider(
                  color: Colors.red,
                  height: sliderval2,
                  thickness: sliderval1,
                  endIndent: sliderval3,
                  indent: sliderval4,
                  //key: ,
                ),
                Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text('hello wor11'),
                ),
              ],
            ));

  Widget getNavigator() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Radio(
                  value: true,
                  groupValue: boolval1,
                  onChanged: (val1) {
                    setState(() {
                      boolval1 = val1;
                    });
                  }),
              Text("VerticalDivider"),
              Radio(
                  value: false,
                  groupValue: boolval1,
                  onChanged: (val1) {
                    setState(() {
                      boolval1 = val1;
                    });
                  }),
              Text("divider"),
            ],
          ),
          Row(
            children: [
              Text("   thickness:"),
              SizedBox(
                width: 250,
                child: Slider(
                    value: sliderval1,
                    min: 5,
                    max: 100,
                    divisions: 10,
                    label: sliderval1.toStringAsFixed(1),
                    onChanged: (newval) {
                      setState(() {
                        sliderval1 = newval;
                      });
                    }),
              ),
            ],
          ),
          // Row(
          //   children: [
          //     Text("   height:"),
          //     SizedBox(
          //       width: 250,
          //       child: Slider(
          //           value: sliderval2,
          //           min: 20,
          //           max: 100,
          //           divisions: 10,
          //           label: sliderval2.toStringAsFixed(1),
          //           onChanged: (newval) {
          //             setState(() {
          //               sliderval2 = newval;
          //             });
          //           }),
          //     ),
          //   ],
          // ),
          Row(
            children: [
              Text("   endIndent:"),
              SizedBox(
                width: 250,
                child: Slider(
                    value: sliderval3,
                    min: 20,
                    max: 100,
                    divisions: 10,
                    label: sliderval3.toStringAsFixed(1),
                    onChanged: (newval) {
                      setState(() {
                        sliderval3 = newval;
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Text("   indent:"),
              SizedBox(
                width: 250,
                child: Slider(
                    value: sliderval4,
                    min: 20,
                    max: 100,
                    divisions: 10,
                    label: sliderval4.toStringAsFixed(1),
                    onChanged: (newval) {
                      setState(() {
                        sliderval4 = newval;
                      });
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
