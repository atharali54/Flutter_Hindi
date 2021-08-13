import 'package:flutter/material.dart';

class CardListTileEx03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card with ListTile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.green,
            elevation: 40,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.album, size: 70),
                  title: Text('Tittle', style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('SubTitle', style: TextStyle(color: Colors.white)),
                ),
                ButtonTheme(
                  child: ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child:
                            Text('Edit', style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: Text('Delete',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
