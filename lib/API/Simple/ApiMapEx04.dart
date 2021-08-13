import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class ApiMapEx04 extends StatefulWidget {
  @override
  _ApiMapEx04State createState() => _ApiMapEx04State();
}

class _ApiMapEx04State extends State<ApiMapEx04> {
  Map mapResponse;
  List listResponse;

  Future getData() async {
    var myFuture = await http.get(Uri.parse(
        'https://api.first.org/data/v1/teams?country=br&pretty=true'));
    debugPrint(myFuture.body);

    setState(() {
      mapResponse = jsonDecode(myFuture.body);
      listResponse = mapResponse['data'];
      //debugPrint('mapResponse');
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
          title: Text('Api Ex04'),
        ),
        body: ListView.builder(
          itemCount: listResponse == null ? 0 : listResponse.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(listResponse[1]["team"].toString() +
                "\n" +
                "Address: " +
                listResponse[1]["address"].toString());
          },
        )
        //Container(
        //   child: Text(listResponse[1]['address']),
        // ),

        );
  }
}
