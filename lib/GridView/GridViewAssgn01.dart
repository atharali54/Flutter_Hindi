import 'package:flutter/material.dart';

class GridAssign01 extends StatelessWidget {
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
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.cyan,
                ],
              ),
            ),
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://image.shutterstock.com/z/stock-photo-portrait-of-pretty-woman-dark-hair-blue-eyes-natural-smile-smiling-beautiful-1581647623.jpg'),
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
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: GridView.count(
                            childAspectRatio: 2.1,
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 30,
                            physics: ScrollPhysics(),
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                //padding: EdgeInsets.all(20),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home_filled,
                                        size: 25, color: Colors.cyan),
                                    Text('DASH BOARD',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                //padding: EdgeInsets.all(20),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star_rounded,
                                        size: 25, color: Colors.cyan),
                                    Text('STUDENT',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.book,
                                        size: 25, color: Colors.cyan),
                                    Text('EXAM',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                //padding: EdgeInsets.all(20),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.calendar_today,
                                        size: 25, color: Colors.cyan),
                                    Text('CALENDER',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                //padding: EdgeInsets.all(20),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home,
                                        size: 25, color: Colors.cyan),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text('DASH BOARD',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                //padding: EdgeInsets.all(20),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home,
                                        size: 25, color: Colors.cyan),
                                    Text('RESOURCES',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                //padding: EdgeInsets.all(20),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home,
                                        size: 25, color: Colors.cyan),
                                    Text('STUDENT',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.phone,
                                        size: 25, color: Colors.cyan),
                                    Text('CONTACT',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
