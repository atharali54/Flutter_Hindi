import 'package:flutter/material.dart';

import 'package:flutter_hindi/AppBar/AppBarHome.dart';

class PopupMenuEx06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            ' Popup Menu ',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext bc) => [
                PopupMenuItem(
                  child: Text('Home'),
                  value: '/home',
                ),
                PopupMenuItem(
                  child: Text('Popup'),
                  value: '/same',
                ),
              ],
              onSelected: (route) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppBarHome()));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PopupMenuEx06()));
              },
            )
          ]),
      body: Center(
        child: Container(
          child: Text(
            '3 dot PopupMenu with PageRoute',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
