import 'package:flutter/material.dart';

class LinearEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Bar"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
            color: Colors.green,
            minHeight: 15,
          ),
          Divider(
            height: 40,
            thickness: 3,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.red,
            // valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
            color: Colors.green,
            strokeWidth: 15,
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _loading = !_loading;
      //     });
      //   },
      //   tooltip: 'Download',
      //   child: Icon(Icons.cloud_download),
      // ),
    );
  }
}
