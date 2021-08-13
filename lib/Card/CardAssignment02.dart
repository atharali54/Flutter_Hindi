import 'package:flutter/material.dart';
import 'package:flutter_hindi/GridView/GridViewHomeScreen.dart';

class CardAssignment02 extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    height: 50,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      home: Scaffold(
        //  backgroundColor: Colors.green[300],
        // appBar: AppBar(
        //   title: Text('GridView Example1'),
        // ),
        body: SingleChildScrollView(
          child: Container(
            // height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.green,
              Colors.cyan,
            ])),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg/260px-Sachin_Tendulkar_at_MRF_Promotion_Event.jpg'),
                    backgroundColor: Colors.transparent,
                    radius: 30.0,
                  ),
                ),
                Text(
                  'Mohd. Athar Ali',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text('RachelRebecca@gmail.com',
                    style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 30,
                ),
                GridView.count(
                  childAspectRatio: 1.2,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 30,
                  children: <Widget>[
                    Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.greenAccent[100],
                      child: SizedBox(
                        // width: 300,
                        // height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 28,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://image.shutterstock.com/z/stock-photo-portrait-of-pretty-woman-dark-hair-blue-eyes-natural-smile-smiling-beautiful-1581647623.jpg'),
                                  backgroundColor: Colors.transparent,
                                  radius: 30.0,
                                ), //CircleAvatar
                              ), //CirclAvatar
                              SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                'Kurukshetra',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                '‘Kurukshetra’ has been described in the first verse',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.green[900],
                                ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: 4,
                              ), //SizedBox
                              SizedBox(
                                width: 80,
                                child: ElevatedButton(
                                  onPressed: () => null,

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.touch_app,
                                        size: 12,
                                      ),
                                      Text(
                                        'Visit',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ), //Padding
                                ), //RaisedButton
                              ) //SizedBox
                            ],
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ),
                    Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.greenAccent[100],
                      child: SizedBox(
                        // width: 300,
                        // height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 28,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg'),
                                  backgroundColor: Colors.transparent,
                                  radius: 30.0,
                                ), //CircleAvatar
                              ), //CirclAvatar
                              SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                'Mohan',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                '‘Kurukshetra’ has been described in the first verse',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.green[900],
                                ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: 4,
                              ), //SizedBox
                              SizedBox(
                                width: 80,
                                child: ElevatedButton(
                                  onPressed: () => null,

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.touch_app,
                                        size: 12,
                                      ),
                                      Text(
                                        'Visit',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ), //Padding
                                ), //RaisedButton
                              ) //SizedBox
                            ],
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ),
                    Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.greenAccent[100],
                      child: SizedBox(
                        // width: 300,
                        // height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 28,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg/260px-Sachin_Tendulkar_at_MRF_Promotion_Event.jpg'),
                                  backgroundColor: Colors.transparent,
                                  radius: 30.0,
                                ), //CircleAvatar
                              ), //CirclAvatar
                              SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                'Sachin',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                '‘Kurukshetra’ has been described in the first verse',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.green[900],
                                ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: 4,
                              ), //SizedBox
                              SizedBox(
                                width: 80,
                                child: ElevatedButton(
                                  onPressed: () => null,

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.touch_app,
                                        size: 12,
                                      ),
                                      Text(
                                        'Visit',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ), //Padding
                                ), //RaisedButton
                              ) //SizedBox
                            ],
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ),
                    Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.greenAccent[100],
                      child: SizedBox(
                        // width: 300,
                        // height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 28,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://image.shutterstock.com/z/stock-photo-portrait-of-pretty-woman-dark-hair-blue-eyes-natural-smile-smiling-beautiful-1581647623.jpg'),
                                  backgroundColor: Colors.transparent,
                                  radius: 30.0,
                                ), //CircleAvatar
                              ), //CirclAvatar
                              SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                'James',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                '‘Kurukshetra’ has been described in the first verse',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.green[900],
                                ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: 4,
                              ), //SizedBox
                              SizedBox(
                                width: 80,
                                child: ElevatedButton(
                                  onPressed: () => null,

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.touch_app,
                                        size: 12,
                                      ),
                                      Text(
                                        'Visit',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ), //Padding
                                ), //RaisedButton
                              ) //SizedBox
                            ],
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          tooltip: "Go Back",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GridHomeScreen()));
          },
          child: Icon(
            Icons.first_page,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
