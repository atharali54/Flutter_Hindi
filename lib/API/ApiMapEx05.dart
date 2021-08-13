//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class ApiMapEx05 extends StatefulWidget {
  @override
  _ApiMapEx05State createState() => _ApiMapEx05State();
}

class _ApiMapEx05State extends State<ApiMapEx05> {
  Map mapresponse;

  Future getData() async {
    var response = await http.get(Uri.parse(
        'https://api.first.org/data/v1/teams?country=br&pretty=true'));
    setState(() {
      mapresponse = jsonDecode(response.body);
    });
    // setState(() {
    //   mapresponse = response.body;
    // });
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
        title: Text('Api Map Ex05'),
      ),
      body: Center(
        child: Container(
          child: Text(mapresponse['data'][0]['email'].toString()),
        ),
      ),
    );
  }
}
