import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_hindi/API/LocalModel/LocalModelEx01.dart';

class NewLocalMainEx01 extends StatefulWidget {
  @override
  _LocalMainEx01State createState() => _LocalMainEx01State();
}

// List<LocalModel05> myList;
// Future getData() async {
//   String myLink = await rootBundle.loadString('assets/5.json'),

//   // setState(() {
//   //   myList = localModel05FromJson(myLink.toString());
//   //   debugPrint(myList[0].id.toString());
//   // });
// }

// // void initState() {
// //   super.initState();
// //   getData();
// // }
//  @override
// void initState() {
//   super.initState();
//    getData();

//}

class _LocalMainEx01State extends State<NewLocalMainEx01> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
