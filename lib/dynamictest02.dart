// import 'package:flutter/material.dart';

// class DynamicEx011 extends StatefulWidget {
//   @override
//   _DynamicEx01State createState() => _DynamicEx01State();
// }

// class _DynamicEx01State extends State<DynamicEx011> {
//   // ignore: deprecated_member_use
//   final List<TextOverflow> _dropdownOverflow = [
//     TextOverflow.clip,
//     TextOverflow.visible,
//     TextOverflow.ellipsis,
//     TextOverflow.fade,
//   ];
//   double sliderVal1 = 8;
//     int _currentFontIndex = 0;  FontStyle _fontStyle = FontStyle.normal;
//   // ignore: deprecated_member_use
//   TextOverflow _selectedTextOverflow = TextOverflow.visible;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'TextOverflow Examples',
//         ),
//       ),
//       body: Column(
//         children: [
//           Text("Overflow: $_selectedTextOverflow"),
//           Container(
//             color: Colors.red,
//             height: 50,
//             child: Align(
//               // alignment: _dropdownOverflow,
//               child: Text(
//                 "KurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetraKurukshetra",
//                 overflow: _selectedTextOverflow,
//                 style: TextStyle(
//                fontSize: ${sliderVal1.toStringAsFixed(0)}),
//                 ),
//               ),
//             ),
            
          
//            Container(
//                 color: Colors.grey.shade300,
//                 height: 150,
//                 width: 325,
//                 child: Center(
//                   child: Text(
//                     "NIC",
//                     textScaleFactor: sliderVal2,
//                     style: TextStyle(
//                       fontSize: sliderVal1,
              
//                       fontStyle: _fontStyle,
                 
//                     ),
//                   ),
//                   )
//                   ),
//         ],
//       ),
//       bottomNavigationBar: _getBottomBar(),
//     );
//   }

//   Widget _getBottomBar() {
//     return Material(
//       color: Theme.of(context).primaryColorLight,
//       child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//         ListTile(
//           title: const Text('alignment:'),
//           trailing: DropdownButton(
//             hint: Text('Select ...'),
//             items: _dropdownOverflow
//                 .map((element) => DropdownMenuItem(
//                       child: Center(
//                         child: Text(element.toString()),
//                       ),
//                       value: element,
//                     ))
//                 .toList(),
//             onChanged: (value) {
//               setState(() {
//                 _selectedTextOverflow = value;
//               });
//             },
//             isExpanded: false,
//             value: _selectedTextOverflow,
//           ),
//         ),

//          Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('textScaleFactor:'),
//                 SizedBox(
//                     width: 215,
//                     child: Slider(
//                       value: sliderVal2,
//                       min: 1,
//                       max: 23,
//                       divisions: 10,
//                       label: sliderVal2.toStringAsFixed(0),
//                       onChanged: (val) {
//                         setState(() {
//                           sliderVal2 = val;
//                         });
//                       },
//                     )),
//               ],
//             ),
//       ]),
//     );
//   }
// }
 