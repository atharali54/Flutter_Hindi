import 'package:flutter/material.dart';

class ProgressBarEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicatorApp();
  }
}

class LinearProgressIndicatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LinearProgressIndicatorAppState();
  }
}

class LinearProgressIndicatorAppState
    extends State<LinearProgressIndicatorApp> {
  var _loading;

  @override
  void initState() {
    super.initState();
    _loading = false;
  }

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
          Divider(
            height: 40,
            thickness: 3,
          ),
          Center(
            child: Container(
              width: 200,
              padding: EdgeInsets.all(12.0),
              child: _loading
                  ? LinearProgressIndicator()
                  : Text("Press Floating Action Button show LinearProgress ",
                      style: TextStyle(fontSize: 20)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _loading = !_loading;
                });
              },
              child: Text('Button'))
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
