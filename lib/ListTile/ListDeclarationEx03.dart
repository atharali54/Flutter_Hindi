import 'package:flutter/material.dart';

class ListTileEx03 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ListTileEx03> {
  final List staffName = [
    'Athar Ali',
    'Manoj',
    'Ashish',
    'Rajiv',
    'Hema',
    'Raj'
  ];
  final List<int> number = [1, 4, 5, 7, 8, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1 List Ex01'),
      ),
      body: Column(
        children: [
          Container(
            width: 300,
            child: ElevatedButton(
                onPressed: () {}, child: Text('List<int> var decleration')),
          ),
          Expanded(
            child: Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: number.length,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: EdgeInsets.all(20),
                          width: 100,
                          height: 50,
                          color: Colors.pinkAccent,
                          child: Card(
                            child: Center(
                              child: Text(number[index].toString(),
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                  )),
                            ),
                          ));
                    })),
          ),
          Container(
            width: 300,
            child: ElevatedButton(
                onPressed: () {}, child: Text('1 List String Ex01')),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: staffName.length,
                itemBuilder: (context, element) {
                  return Container(
                    margin: EdgeInsets.all(2),
                    width: 200,
                    height: 50,
                    color: Colors.green,
                    child: Center(
                        child: Text('${staffName[element]}',
                            style: TextStyle(
                              color: Colors.white,
                            ))),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
