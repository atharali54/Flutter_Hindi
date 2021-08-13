import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

class GridEx01 extends StatelessWidget {
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
        title: Text('GridView Example1'),
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              alignment: Alignment.center,
              child: Text(
                'Simple Grid',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              children: <Widget>[
                Container(color: Colors.red, child: FlutterLogo()),
                Container(color: Colors.green, child: FlutterLogo()),
                Container(color: Colors.yellow, child: FlutterLogo()),
                Container(color: Colors.red, child: FlutterLogo()),
                Container(color: Colors.green, child: FlutterLogo()),
                Container(color: Colors.yellow, child: FlutterLogo()),
                Container(color: Colors.red, child: FlutterLogo()),
                Container(color: Colors.red, child: FlutterLogo()),
              ],
            ),
            mydivider,
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              alignment: Alignment.center,
              child: Text(
                'GridView with Icon/Text',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.red,
                  child: Column(
                    children: [
                      Icon(Icons.home, size: 25, color: Colors.white),
                      Text('Home',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.brown,
                  child: Column(
                    children: [
                      Icon(Icons.album_outlined, size: 25, color: Colors.white),
                      Text('About',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.brown,
                  child: Column(
                    children: [
                      Icon(Icons.screen_lock_landscape,
                          size: 25, color: Colors.white),
                      Text('Demo',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.green,
                  child: Column(
                    children: [
                      Icon(Icons.car_rental, size: 25, color: Colors.white),
                      Text('Car',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
