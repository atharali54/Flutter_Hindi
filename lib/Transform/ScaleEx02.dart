import 'package:flutter/material.dart';
//import 'package:flutter_hindi/Functions.dart';

class TransformScaleEx02 extends StatefulWidget {
  @override
  _TransformEx01State createState() => _TransformEx01State();
}

class _TransformEx01State extends State<TransformScaleEx02> {
  double sliOffsetX = 10.0;
  double sliOffsetY = 1.0;
  Alignment selectAlignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transform Scale',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          child: Transform.scale(
            alignment: selectAlignment,
            scale: 1,
            origin: Offset(sliOffsetX, sliOffsetY),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red[600],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: _getBottomBar(),
    );
  }

  // Widget _getBottomBar() {
  //   return Material(
  //     color: Theme.of(context).primaryColorLight,
  //     child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
  //       Row(
  //         children: [
  //           CustAlignment(
  //               propText: 'alignment:',
  //               defaultAlignment: selectAlignment,
  //               onValueChange: (val) {
  //                 setState(() {
  //                   selectAlignment = val;
  //                 });
  //               }),
  //           Text('sliOffsetX:'),
  //           SizedBox(
  //               width: 260,
  //               child: Slider(
  //                 value: sliOffsetX,
  //                 min: 0,
  //                 max: 100,
  //                 divisions: 20,
  //                 // label: sliOffsetX.val,
  //                 onChanged: (val) {
  //                   setState(() {
  //                     sliOffsetX = val;
  //                   });
  //                 },
  //               )),
  //         ],
  //       ),
  //       Text('sliOffsetY:'),
  //       SizedBox(
  //           width: 260,
  //           child: Slider(
  //             value: sliOffsetY,
  //             min: 0,
  //             max: 20,
  //             divisions: 10,
  //             label: sliOffsetY.toStringAsFixed(1),
  //             onChanged: (val) {
  //               setState(() {
  //                 sliOffsetY = val;
  //               });
  //             },
  //           )),
  //     ]),
  //   );
  // }
}
