import 'package:flutter/material.dart';

class ProgressBarEx02 extends StatefulWidget {
  @override
  _ProgressBarEx02State createState() => _ProgressBarEx02State();
}

class _ProgressBarEx02State extends State<ProgressBarEx02> {
  var _loading;
  void initState() {
    super.initState();
    _loading = false;
  }

  //  var _loading;

  // @override
  // void initState() {
  //   super.initState();
  //   _loading = false;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Bar on button Click'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            child: _loading ? CircularProgressIndicator() : Text('data'),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _loading = !_loading;
                });
              },
              child: Text('Button'))
        ],
      )),
    );
  }
}
