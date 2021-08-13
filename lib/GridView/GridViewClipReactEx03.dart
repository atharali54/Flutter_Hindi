import 'package:flutter/material.dart';

class GridClipReactEx03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ClipReact',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        children: [
          Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0)),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        heightFactor: 1,
                        widthFactor: 1,
                        child: Container(
                            color: Colors.blue,
                            width: 60,
                            height: 50,
                            child: Icon(Icons.email,
                                color: Colors.white, size: 30.0)))),
              ),
            ),
          ),
          Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0)),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        heightFactor: 1,
                        widthFactor: 1,
                        child: Container(
                            color: Color(0xfff32595),
                            width: 60,
                            height: 50,
                            child: Icon(Icons.access_alarm,
                                color: Colors.white, size: 30.0)))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
