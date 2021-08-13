import 'package:flutter/material.dart';
import 'package:flutter_hindi/API/RemoteModel/OnlineModelEx02.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class OnlineModelEx02 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<OnlineModelEx02> {
  List<Models02> modelData;
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
    var myLink =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    // ignore: close_sinks
    // var jsonResponse = jsonDecode(response.body);
    // Models data = modelsFromJson(response);
    setState(() {
      //modelData = modelsFromJson(response.body);
      modelData = models02FromJson(myLink.body);
      // debugPrint(modelData[0].title);
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
        title: Text('Model List Ex02'),
      ),
      body: Center(
        child: Text(
          "Name:-" +
              modelData[0].name +
              '\n' +
              "Email:-" +
              modelData[0].email +
              '\n' +
              "Phone:-" +
              modelData[0].phone +
              '\n' +
              modelData[0].website,
          style: TextStyle(color: Colors.green, fontSize: 24),
        ),
      ),
    );
  }
}
