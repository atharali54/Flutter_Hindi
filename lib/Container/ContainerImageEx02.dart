import 'package:flutter/material.dart';

class ContainerImageEx02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container with Image'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.red,
                width: 200,
                height: 100,
                child: Image.asset('assets/test.png'),
              ),
              Container(
                color: Colors.blue,
                width: 200,
                height: 100,
                child: Image.asset('assets/imgheight01.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
