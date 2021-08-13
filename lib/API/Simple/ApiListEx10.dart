import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';

class ApiListEx10 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ApiListEx10> {
  List listResponse;

  Future fetchData() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    debugPrint(response.toString());
    if (response.statusCode == 200) {
      setState(() {
        listResponse = jsonDecode(response.body);
      });
    }
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api List Ex 10'),
      ),
      body: listResponse == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Text(listResponse[1]['id'].toString() +
                  '\n' +
                  listResponse[1]['title'].toString()),
              //GridView.builder(
              //     shrinkWrap: true,
              //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //         maxCrossAxisExtent: 2,
              //         // childAspectRatio: 3 / 2,
              //         // crossAxisSpacing: 20,
              //         mainAxisSpacing: 20),
              //     itemCount: listResponse.length,
              //     itemBuilder: (BuildContext ctx, index) {
              //       return Container(
              //         alignment: Alignment.center,
              //         child: Text(listResponse[index]),
              //         decoration: BoxDecoration(
              //             color: Colors.amber,
              //             borderRadius: BorderRadius.circular(15)),
              //       );
              //     }),
              // Image(image: NetworkImage(listResponse[0]['url'])),
            ),
    );
  }
}
