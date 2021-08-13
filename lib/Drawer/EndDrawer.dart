import 'package:flutter/material.dart';

class EndDrawerEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'End Drawer',
          style: TextStyle(color: Colors.white),
        ),
      ),
      endDrawer: Drawer(),
      body: Center(
        child: Container(
          child: Text(
            'Flutter Hindi',
            style: TextStyle(fontSize: 50, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
