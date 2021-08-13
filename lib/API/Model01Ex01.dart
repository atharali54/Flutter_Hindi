import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Model/Model01.dart';

Future<List<Model01>> fetchData() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums');
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse
        .map((listData) => new Model01.fromJson(listData))
        .toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

class ModelHome extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ModelHome> {
  Future<List<Model01>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Model'),
      ),
      body: Center(
        child: FutureBuilder<List<Model01>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Model01> listData = snapshot.data;
              return ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 75,
                      color: Colors.white,
                      child: Center(
                        child: Text(listData[index].title),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
