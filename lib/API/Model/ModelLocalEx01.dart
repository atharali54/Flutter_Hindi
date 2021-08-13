import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:flutter_hindi/API/Model/ModelLocalConEx01.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class ModelLocalEx01 extends StatefulWidget {
  @override
  _ModelLocalEx01State createState() => _ModelLocalEx01State();
}

class _ModelLocalEx01State extends State<ModelLocalEx01> {
  Models modelData;

  Future getData() async {
    String responseString = await rootBundle.loadString('assets/json/1.json');
    var jsonResponse = json.decode(responseString);
    Models data = Models.fromJson(jsonResponse);
    setState(() {
      modelData = data;
      debugPrint('${modelData.id}');
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
        title: Text('Api Local Ex01'),
      ),
      body: Center(
        child: Container(
          child: Text('Api Local Ex01'),
        ),
      ),
    );
  }
}
