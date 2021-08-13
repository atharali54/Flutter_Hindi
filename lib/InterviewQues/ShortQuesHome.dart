import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/InterviewQues/AllQues01.dart';

class ShortQuesHomeScreen extends StatelessWidget {
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
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Short Ques Home'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              Container(
                margin: EdgeInsets.all(2),
                height: 32,
                color: Colors.blue,
                child: ElevatedButton(
                    child: Text('All Type',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllQuesList()));
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
// TODO Implement this library.