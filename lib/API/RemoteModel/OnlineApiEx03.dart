import 'package:flutter/material.dart';
import 'package:flutter_hindi/API/RemoteModel/OnlineModelEx03.dart';

import 'dart:async';
import 'package:http/http.dart' as http;

class OnlineModelEx03 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<OnlineModelEx03> {
  List<Models03> modelData;
  // ignore: missing_return
  Future<List<Models03>> getData() async {
    // String jsonString = await rootBundle.loadString("assets/5.json");
    // // var jsonResponse = json.decode(jsonString);
    // // Models data = Models.fromJson(jsonResponse);
    // setState(() {
    //   modelData = modelsFromJson(jsonString);
    //   // debugPrint('${modelData.classes[0]}');
    //   debugPrint('${modelData[0].className}, ${modelData[0].level}');
    // });

    //Using Http-------------------------------------------
    // http.Response response
    var myLink =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    // ignore: close_sinks
    //var jsonResponse = jsonDecode(myLink.body);
    Models03 data = models03FromJson(myLink.body);
    setState(() {
      // modelData = data;
      debugPrint(data.toString());
      // debugPrint('${modelData.status}');
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model List Ex03(ERROR)'),
      ),
      body: Center(
          // child: Text(modelData.error),
          // child: Text(
          //   "Name:-" +
          //       modelData[0].name +
          //       '\n' +
          //       "Email:-" +
          //       modelData[0].email +
          //       '\n' +
          //       "Phone:-" +
          //       modelData[0].phone +
          //       '\n' +
          //       modelData[0].website,
          //   style: TextStyle(color: Colors.green, fontSize: 24),
          // ),
          ),
    );
  }
}
