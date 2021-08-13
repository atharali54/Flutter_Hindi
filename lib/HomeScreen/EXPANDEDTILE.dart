import 'package:flutter/material.dart';
import 'package:flutter_hindi/Container/ContainerHomeScreen.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

class HomeScreen2 extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text('HOMESCREEN 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            // https://medium.com/flutter-community/flutter-expansion-collapse-view-fde9c51ac438

            // mydivider,
            ExpansionTile(
              title: Text(
                " SINGLE CHILD WIDGETS",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black
                ),
              ),
              children: <Widget>[
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.forward),
                    title: Text(
                      'Container',
                      style: TextStyle(
                          fontSize: 24.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerHome(),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.forward),
                    title: Text(
                      'Padding',
                      style: TextStyle(
                          fontSize: 24.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerHome(),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.forward),
                    title: Text(
                      'Align',
                      style: TextStyle(
                          fontSize: 24.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerHome(),
                      ),
                    );
                  },
                ),
              ],
            ),
            mydivider,
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('Interview Que/Ans'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
            ),
            ExpansionTile(
              //textColor: Colors.brown,
              //backgroundColor: Colors.blue[300],
              title: Text(
                " MULTIPLE CHILD WIDGETS",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black
                ),
              ),
              children: <Widget>[
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.forward),
                    title: Text(
                      'Row',
                      style: TextStyle(
                          fontSize: 24.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen2(),
                      ),
                    );
                  },
                ),
              ],
            ),
            mydivider,
            ExpansionTile(
              //textColor: Colors.brown,
              //backgroundColor: Colors.blue[300],
              title: Text(
                " BUTTONS",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black
                ),
              ),
              children: <Widget>[
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.forward),
                    title: Text(
                      'Row',
                      style: TextStyle(
                          fontSize: 24.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerHome(),
                      ),
                    );
                  },
                ),
              ],
            ),
            mydivider,
            ExpansionTile(
              //textColor: Colors.brown,
              //backgroundColor: Colors.blue[300],
              title: Text(
                " TEXTFIELD",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black
                ),
              ),
              children: <Widget>[
                InkWell(
                  // child: list2Row,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerHome(),
                      ),
                    );
                  },
                ),
              ],
            ),
            mydivider,
            ExpansionTile(
              //textColor: Colors.brown,
              //backgroundColor: Colors.blue[300],
              title: Text(
                " TABLE",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black
                ),
              ),
              children: <Widget>[
                InkWell(
                  // child: list2Row,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerHome(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.