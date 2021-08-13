import 'package:flutter/material.dart';

class ListTileEx01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile Ex01'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: Text(
              'ListTile use only Tittle',
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_tree,
              color: Colors.red,
            ),
            title: Text('Use only Tittle with Leading icon',
                style: TextStyle(color: Colors.green)),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                'A',
                style: TextStyle(color: Colors.white),
              ),
            ),
            trailing: Icon(
              Icons.account_tree,
              color: Colors.red,
            ),
            title: Text(
              'Tittle Heading',
            ),
            subtitle: Text(
              'Subtittle SubHeading',
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_tree,
              color: Colors.red,
            ),
            trailing: Icon(
              Icons.more_vert,
              color: Colors.red,
            ),
            title: Text(
              'Tittle Heading',
            ),
            subtitle: Text(
              'Subtittle SubHeading',
            ),
          ),
          Card(
            color: Colors.grey,
            elevation: 5,
            child: ListTile(
              leading: Icon(
                Icons.account_tree,
                color: Colors.red,
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.red,
              ),
              title: Text(
                'Use Card in ListTile',
              ),
              subtitle: Text(
                'Subtittle SubHeading',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
