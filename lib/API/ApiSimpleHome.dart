import 'package:flutter/material.dart';

import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

import 'package:flutter_hindi/API/ApiEx01.dart';
import 'package:flutter_hindi/API/ApiList08.dart';
import 'package:flutter_hindi/API/ApiListEx02.dart';
import 'package:flutter_hindi/API/ApiMapEx05.dart';
import 'package:flutter_hindi/API/ApiMapEx04.dart';

import 'package:flutter_hindi/API/ApiStringEx03.dart';

import 'package:flutter_hindi/API/Model01Ex01.dart';

class ApiSimpleHome extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'API Simple',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Api Simple',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiEx01()));
                },
                child: Text(
                  'API Ex01',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiListEx02()));
                },
                child: Text(
                  'API List Ex02',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiStringEx03()));
                },
                child: Text(
                  'API String Ex03',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiMapEx04()));
                },
                child: Text(
                  'API Map Ex04',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiMapEx05()));
                },
                child: Text(
                  'API Map Ex05',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiMapEx05()));
                },
                child: Text(
                  'API Map new Ex06',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiListEx08()));
                },
                child: Text(
                  'API List Hema new Ex08',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ModelHome()));
                },
                child: Text(
                  'Model',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(
          Icons.first_page,
          color: Colors.white,
        ),
      ),
    );
  }
}
