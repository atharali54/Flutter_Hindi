import 'package:flutter/material.dart';
import 'package:flutter_hindi/Align/AlignHomeScreen.dart';

import 'package:flutter_hindi/Card/CardHome.dart';
import 'package:flutter_hindi/Container/ContainerHomeScreen.dart';
import 'package:flutter_hindi/FittedBox/FittedBoxHomeScreen.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/ListTile/ListTileHome.dart';

import 'package:flutter_hindi/Opacity/OpacityHome.dart';
import 'package:flutter_hindi/RotatedBox/RotatedBoxEx01.dart';
import 'package:flutter_hindi/Padding/PaddingHomeScreen.dart';

class SingleChildPage extends StatelessWidget {
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
          'Single Child Widgets',
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
                  color: Colors.orange,
                ),
                title: Text('कंटेनर (Container)', style: mytextstyle),
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
            mydivider,
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.orange,
                ),
                title: Text('पैडिंग (Padding)', style: mytextstyle),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaddingHomeScreen(),
                  ),
                );
              },
            ),
            mydivider,
            Container(
              height: 36,
              child: InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.forward,
                    color: Colors.orange,
                  ),
                  title: Text(
                    ' लिस्ट व्यू / लिस्ट टाइल (ListView/ListTile)',
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
            ),
            mydivider,
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.orange,
                ),
                title: Text(
                  'कार्ड  (Card)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardHome(),
                  ),
                );
              },
            ),
            mydivider,
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.orange,
                ),
                title: Text(
                  'अलाइन (Align)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlignHomeScreen(),
                  ),
                );
              },
            ),
            mydivider,
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.orange,
                ),
                title: Text(
                  'फिटेड बॉक्स (FITTED BOX)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FittedHomeScreen(),
                  ),
                );
              },
            ),
            mydivider,
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.orange,
                ),
                title: Text(
                  'ओपेसिटी (Opacity)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OpacityHome(),
                  ),
                );
              },
            ),
            // mydivider,
            // InkWell(
            //   child: ListTile(
            //     leading: Icon(Icons.forward),
            //     title: Text(
            //       'Card',
            //       style: mytextstyle,
            //     ),
            //   ),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => CardEx01(),
            //       ),
            //     );
            //   },
            // ),
            mydivider,
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.orange,
                ),
                title: Text(
                  'रोटेट बॉक्स( RotatedBox) Pending',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RoteatedBoxEx01(),
                  ),
                );
              },
            ),
            mydivider,
            Container(
              height: 36,
              child: InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.forward,
                    color: Colors.orange,
                  ),
                  title: Text(
                    'सेंटर (Center)Pending',
                    style: mytextstyle,
                  ),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ListTileHome(),
                  //   ),
                  // );
                },
              ),
            ),
            mydivider,
            Container(
              height: 36,
              child: InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.forward,
                    color: Colors.orange,
                  ),
                  title: Text(
                    'बेसलाइन (Baseline)Pending',
                    style: mytextstyle,
                  ),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => HomeScreen(),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
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
// TODO Implement this library.