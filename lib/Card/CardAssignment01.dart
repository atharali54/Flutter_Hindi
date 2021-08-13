import 'package:flutter/material.dart';

class CardAssignment01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assignment',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        /** Card Widget **/
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 108,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ), //CirclAvatar
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Kurukshetra',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    '‘Kurukshetra’ has been described in the first verse of Shrimad Bhagavad Gita, in the form of Dharmakshetra Kurukshetra.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green[900],
                    ), //Textstyle
                  ), //Text
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => null,

                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(Icons.touch_app),
                            Text('Visit'),
                          ],
                        ), //Row
                      ), //Padding
                    ), //RaisedButton
                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ),
    );
  }
}
