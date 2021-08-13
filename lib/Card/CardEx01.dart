import 'package:flutter/material.dart';

class CardEx01 extends StatefulWidget {
  @override
  _CardEx01State createState() => _CardEx01State();
}

class _CardEx01State extends State<CardEx01> {
  bool boolVal1 = false;
  double sliderelevation = 1;
  double sliderMargin = 2.0;
  double sliderSemantic = 2.0;
  double sliderWidth = 2;
  double sliderRadious = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Container(
        child: Card(
          borderOnForeground: boolVal1,
          margin: EdgeInsets.all(sliderMargin),
          elevation: sliderelevation,
          shadowColor: Colors.green,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: sliderWidth,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(sliderRadious),
          ),
          child: Container(
              width: 320,
              height: 100,
              color: Colors.cyan,
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
              Text('borderRadious:'),
              SizedBox(
                  width: 130,
                  child: Slider(
                    value: sliderMargin,
                    min: 1,
                    max: 100,
                    divisions: 30,
                    label: sliderMargin.toStringAsFixed(1),
                    onChanged: (val) {
                      setState(() {
                        sliderMargin = val;
                      });
                    },
                  )),
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

              // Text('reverse:'),
              // Radio(
              //     value: true,
              //     groupValue: boolVal1,
              //     onChanged: (bool value) {
              //       setState(() {
              //         boolVal1 = value;
              //       });
              //     }),
              // Text('true'),
              // Radio(
              //     value: false,
              //     groupValue: boolVal1,
              //     onChanged: (bool value) {
              //       setState(() {
              //         boolVal1 = value;
              //       });
              //     }),
              // Text('false'),
            ],
          ),
          Row(
            children: [
              Text('width:'),
              SizedBox(
                  width: 130,
                  child: Slider(
                    value: sliderWidth,
                    min: 1,
                    max: 100,
                    divisions: 30,
                    label: sliderWidth.toStringAsFixed(1),
                    onChanged: (val) {
                      setState(() {
                        sliderelevation = val;
                      });
                    },
                  )),
              SizedBox(
                  width: 130,
                  child: Slider(
                    value: sliderRadious,
                    min: 1,
                    max: 100,
                    divisions: 30,
                    label: sliderRadious.toStringAsFixed(1),
                    onChanged: (val) {
                      setState(() {
                        sliderRadious = val;
                      });
                    },
                  )),
            ],
          )
        ],
      ),
    );
  }
}
