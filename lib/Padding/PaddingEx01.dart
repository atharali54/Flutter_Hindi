import 'package:flutter/material.dart';

class PaddingEx01 extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    height: 50,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Padding Example'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                alignment: Alignment.center,
                child: Text(
                  '-- EdgeInsets.all() --',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                color: Colors.brown,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Text(''),
                ),
              ),
              mydivider,
              Container(
                margin: EdgeInsets.all(4),
                alignment: Alignment.center,
                child: Text(
                  '-- EdgeInsets.fromLTRB --',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 10, 15),
                color: Colors.brown,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Text(''),
                ),
              ),
              mydivider,
              Container(
                margin: EdgeInsets.all(4),
                alignment: Alignment.center,
                child: Text(
                  '-- EdgeInsets.only --',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                color: Colors.brown,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Text(''),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 10),
                color: Colors.brown,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Text(''),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 20, bottom: 10),
                color: Colors.brown,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Text(''),
                ),
              ),
            ]),
          ),
        ));
  }
}
