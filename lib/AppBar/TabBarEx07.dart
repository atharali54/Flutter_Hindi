import 'package:flutter/material.dart';

class TabBarEx07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tab Bar',
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(tabs: [
                  Icon(Icons.note_add),
                  Icon(Icons.music_note),
                  Icon(Icons.star),
                ]),
                title: Text('Tab Bar'),
              ),
              body: TabBarView(children: [
                Icon(
                  Icons.note_add,
                  color: Colors.orange,
                  size: 40,
                ),
                Icon(
                  Icons.music_note,
                  color: Colors.orange,
                  size: 40,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 40,
                ),
              ]),
            )));
  }
}



// class TabBarEx07 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         bottom: TabBar(tabs: [
//           Icon(Icons.note_add),
//           Icon(Icons.music_note),
//           Icon(Icons.star),
//         ]),
//         title: Text('data'),
//       ),
//       body: TabBarView(children: [
//         Icon(Icons.note_add),
//         Icon(Icons.music_note),
//         Icon(Icons.star),
//       ]),
//     );
//   }
// }
