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
  List lstResponse;
  // List list2;
  Future getdata() async {
    var response = await http
        .get(Uri.parse('https://thegrowingdeveloper.org/apiview?id=4'));
    setState(() {
      lstResponse = jsonDecode(response.body);
      //list2 = lstResponse.toList();
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Api List Ex02'),
        ),
        body: ListView.builder(
          itemCount: lstResponse == null ? 0 : lstResponse.length,
          // itemCount: lstResponse.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(lstResponse[index]),
            );

            // Text(lstResponse.toString());
          },
        )
        //     Center(
        //   child: Container(
        //     child: Text(lstResponse.toString()),
        //   ),
        // ),

        );
  }
}
