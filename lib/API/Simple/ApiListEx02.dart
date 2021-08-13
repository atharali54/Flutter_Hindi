//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class ApiListEx02 extends StatefulWidget {
  @override
  _ApiListEx02State createState() => _ApiListEx02State();
}

class _ApiListEx02State extends State<ApiListEx02> {
  List listResponse;

  Future fetchData() async {
    http.Response response = await http
        .get(Uri.parse('https://thegrowingdeveloper.org/apiview?id=4'));

    debugPrint(response.toString());

    setState(() {
      listResponse = jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api List Ex02'),
      ),
      body: Text(listResponse.toString()),
    );
  }
}
