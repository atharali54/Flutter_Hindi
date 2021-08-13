import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class SecDropDownList extends StatefulWidget {
  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<SecDropDownList> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: deprecated_member_use
        child: Column(
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              underline: Container(),
              icon: Icon(Icons.arrow_downward),
              iconSize: 20.0, // can be changed, default: 24.0
              iconEnabledColor: Colors.red,
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue.toString();
                });
              },
              //  items: <String>['ABC Alphabets','Animal','At the doctor','Cloths','Computer','Studies',]
              items: <String>[
                'Animal',
                'Animal1',
                'Animal4',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Column(
                    children: [
                      // ignore: deprecated_member_use
                      RaisedButton(
                          //  key: keys[0],
                          color: Colors.teal,
                          child: Text(
                            "Network Giffy",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => NetworkGiffyDialog(
                                      //    key: keys[1],
                                      image: Image.asset(
                                        "assets/bannerimg.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                      entryAnimation: EntryAnimation.TOP_LEFT,
                                      title: Text(
                                        'Granny Eating Chocolate',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      description: Text(
                                        'This is a granny eating chocolate dialog box. This library helps you easily create fancy giffy dialog.',
                                        textAlign: TextAlign.center,
                                      ),
                                      onOkButtonPressed: () {},
                                    ));
                          }),
                      // ignore: deprecated_member_use
                      RaisedButton(
                          //  key: keys[2],
                          color: Colors.teal,
                          child: Text(
                            'Flare Giffy',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => FlareGiffyDialog(
                                      // key: keys[3],
                                      flarePath: 'assets/space_demo.flr',
                                      flareAnimation: 'loading',
                                      title: Text(
                                        'Space Reloading',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      entryAnimation: EntryAnimation.DEFAULT,
                                      description: Text(
                                        'This is a space reloading dialog box. This library helps you easily create fancy flare dialog.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(),
                                      ),
                                      onOkButtonPressed: () {},
                                    ));
                          }),
                      // ignore: deprecated_member_use
                      RaisedButton(
                          // key: keys[4],
                          color: Colors.teal,
                          child: Text(
                            dropdownValue,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                      //  key: keys[5],
                                      image: Image.asset(
                                        'assets/imgone.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      title: Text(
                                        'Men Wearing Jackets',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      entryAnimation:
                                          EntryAnimation.BOTTOM_RIGHT,
                                      description: Text(
                                        'This is a men wearing jackets dialog box. This library helps you easily create fancy giffy dialog.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(),
                                      ),
                                      onOkButtonPressed: () {},
                                    ));
                          }),
                    ],
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 40,
            ),
            // Text(dropdownValue),
          ],
        ),
      ),
    );
  }
}

// class MyStatefulWidget extends StatefulWidget {
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   final _formKey = GlobalKey<FormState>();
//   String dropdownValue = 'One';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: DropdownButton<String>(
//           value: dropdownValue,
//           icon: const Icon(Icons.arrow_downward),
//           iconSize: 24,
//           elevation: 16,
//           style: const TextStyle(color: Colors.deepPurple),
//           underline: Container(
//             height: 2,
//             color: Colors.deepPurpleAccent,
//           ),
//           onChanged: (String newValue) {
//             setState(() {
//               dropdownValue = newValue;
//             });
//           },
//           items: <String>['One', 'Two', 'Free', 'Four']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }