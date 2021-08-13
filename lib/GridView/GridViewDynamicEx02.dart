import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DynamicGridEx02 extends StatefulWidget {
  @override
  _DynamicGridEx02State createState() => _DynamicGridEx02State();
}

class _DynamicGridEx02State extends State<DynamicGridEx02> {
  double sliderVal1 = 2;
  double sliderVal2 = 2;
  double sliderVal3 = 4;
  double sliderAspect = 1.1;
  Axis axis = Axis.vertical;
  bool boolVal1 = false;
  // ScrollDirection scrollDirection = Axis.horizontal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Container(
        child: GridView.count(
          reverse: boolVal1,
          scrollDirection: axis,
          childAspectRatio: sliderAspect,
          // //dragStartBehavior: DragStartBehavior.down,
          // //addRepaintBoundaries: false,
          // addSemanticIndexes: true,
          shrinkWrap: true,
          crossAxisCount: int.parse(sliderVal3.toString()),
          mainAxisSpacing: sliderVal1,
          crossAxisSpacing: sliderVal2,
          children: <Widget>[
            Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text('ONE')),
            Container(
                color: Colors.pink,
                alignment: Alignment.center,
                child: Text(
                  'TWO',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text(
                  'THREE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                color: Colors.blueGrey,
                alignment: Alignment.center,
                child: Text(
                  'FOUR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'FIVE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                color: Colors.yellow,
                alignment: Alignment.center,
                child: Text(
                  'SIX',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                color: Colors.greenAccent,
                alignment: Alignment.center,
                child: Text(
                  'SEVEN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  'EIGHT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          ],
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
              Text('crossAxisCount:'),
              SizedBox(
                  width: 130,
                  child: Slider(
                    value: sliderVal3,
                    min: 1,
                    max: 9,
                    divisions: 8,
                    label: sliderVal3.toStringAsFixed(1),
                    onChanged: (val) {
                      setState(() {
                        sliderVal3 = val;
                      });
                    },
                  )),
              Text('mainAxisSpacing'),
              SizedBox(
                  width: 130,
                  child: Slider(
                    value: sliderVal1,
                    min: 2,
                    max: 100,
                    divisions: 20,
                    label: sliderVal1.toStringAsFixed(1),
                    onChanged: (val) {
                      setState(() {
                        sliderVal1 = val;
                      });
                    },
                  )),
            ],
          ),
          Row(
            children: [
              Text('crossAxisSpacing:'),
              SizedBox(
                  width: 130,
                  child: Slider(
                    value: sliderVal2,
                    min: 2,
                    max: 100,
                    divisions: 20,
                    label: sliderVal2.toStringAsFixed(1),
                    onChanged: (val) {
                      setState(() {
                        sliderVal2 = val;
                      });
                    },
                  )),
              Text('scrollDirection:'),
              DropdownButton(
                  value: axis,
                  onChanged: (dynamic newvalue) {
                    setState(() {
                      axis = newvalue;
                    });
                  },
                  items: Axis.values
                      .map((val) => DropdownMenuItem(
                          value: val,
                          child: Text(
                            val.toString(),
                            style: TextStyle(fontSize: 12),
                          )))
                      .toList()),
            ],
          ),
          Row(
            children: [
              Text('childAspectRatio:'),
              SizedBox(
                  width: 130,
                  child: Slider(
                    value: sliderAspect,
                    min: 0.1,
                    max: 10,
                    divisions: 30,
                    label: sliderAspect.toStringAsFixed(1),
                    onChanged: (val) {
                      setState(() {
                        sliderAspect = val;
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
