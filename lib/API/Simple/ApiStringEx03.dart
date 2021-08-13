//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class ApiStringEx03 extends StatefulWidget {
  @override
  _ApiStringEx03State createState() => _ApiStringEx03State();
}

class _ApiStringEx03State extends State<ApiStringEx03> {
  String strResponse;
  Future getData() async {
    var response = await http
        .get(Uri.parse('https://thegrowingdeveloper.org/apiview?id=1'));
    debugPrint(response.body);

    setState(() {
      // strResponse = jsonDecode(response.body);
      strResponse = response.body;
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
        title: Text('Api String Ex03 - '),
      ),
      body: Text(strResponse.toString()),
    );
  }
}
