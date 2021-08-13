import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiListEx08 extends StatefulWidget {
  @override
  _MyApiState createState() => _MyApiState();
}

class _MyApiState extends State<ApiListEx08> {
  Map listResponse;

  Future getData() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    debugPrint(response.body);
    setState(() {
      listResponse = jsonDecode(response.body);
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
          title: Text('hema'),
        ),
        body: Text(listResponse.toString())

        // ListView.builder(
        //   itemCount: listResponse == null ? 0 : listResponse.length,
        //   // itemCount: lstResponse.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return ListTile(
        //       title: Text(listResponse[index]),
        //     );

        //     // Text(lstResponse.toString());
        //   },
        // )
        //     Center(
        //   child: Container(
        //     child: Text(lstResponse.toString()),
        //   ),
        // ),

        );
  }
}
