import 'package:flutter/material.dart';
import 'package:flutter_hindi/API/RemoteModel/OnlineApiEx01.dart';

//import 'package:flutter/Services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class LocalModelEx01 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<LocalModelEx01> {
  List<Models> modelData;
  Future getData() async {
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
    var myLink = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    // ignore: close_sinks
    // var jsonResponse = jsonDecode(response.body);
    // Models data = modelsFromJson(response);
    setState(() {
      //modelData = modelsFromJson(response.body);
      modelData = modelsFromJson(myLink.body);
      debugPrint(modelData[0].title);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Model List Ex01'),
        ),
        body: Center(
          child: Text(modelData[0].title +
              modelData[0].title +
              '\n' +
              modelData[0].userId.toString()),
        ),
      ),
    );
  }
}
