import 'package:flutter/material.dart';

class AnimatedContainerEx01 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AnimatedContainerEx01> {
  double mywidth = 100;
  double myheight = 100;
  Color mycolor = Colors.green;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => setState(() {
          mywidth = 100;
          myheight = 600;
          mycolor = Colors.pink;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Container',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: AnimatedContainer(
              duration: Duration(seconds: 20),
              width: mywidth,
              height: myheight,
              color: mycolor,
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     setState(() {
          //       mywidth = 100;
          //       myheight = 600;
          //       mycolor = Colors.pink;
          //     });
          //   },
          //   child: Text('click me'),
          // ),
        ],
      ),
    );
  }
}
