import 'package:flutter/material.dart';

class DrawerEx02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigation Bar',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'MYPAGE',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  //color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/flag.jpg'), fit: BoxFit.cover)),

              // next
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/flag.jpg'),
                    height: 70,
                  ),
                  Text(
                    'athar ali',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  Text(
                    'athar@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder_open),
              title: Text(
                'My File',
                style: TextStyle(fontSize: 22.0),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text(
                'Share',
                style: TextStyle(fontSize: 22.0),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 3.0,
              indent: 10, // line
              endIndent: 10,
            ),
          ],
        ),
      ),
    );
  }
}
