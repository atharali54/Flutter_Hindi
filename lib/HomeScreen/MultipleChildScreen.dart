import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/ListTile/ListTileHome.dart';

import 'package:flutter_hindi/RowColumn/RowColumnEx01.dart';
import 'package:flutter_hindi/Stack/StackHomeScreen.dart';

class MultipleChildPage extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
  );
  final mytextstyle = TextStyle(
      color: Colors.orange,
      fontSize: 16.0,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Multiple Child WIDGETS',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 8.0),
            // https://medium.com/flutter-community/flutter-expansion-collapse-view-fde9c51ac438

            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text('रौ और कॉलम (Row & Column)', style: mytextstyle),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RowColEx01(),
                  ),
                );
              },
            ),
            mydivider,
            // InkWell(
            //   child: ListTile(
            //     leading: Icon(Icons.forward,color: Colors.brown,),
            //     title: Text('COLUMN', style: mytextstyle),
            //   ),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => TestEx01(),
            //       ),
            //     );
            //   },
            // ),
            //mydivider,
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'स्टैक (Stack)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StackHomeScreen(),
                  ),
                );
              },
            ),
            mydivider,
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'लिस्ट टाइल (ListTile)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListTileHome(),
                  ),
                );
              },
            ),
            mydivider,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
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