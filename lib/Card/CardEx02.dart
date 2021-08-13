// import 'package:flutter/material.dart';

// class CardEx01 extends StatefulWidget {
//   @override
//   _CardEx01State createState() => _CardEx01State();
// }

// class _CardEx01State extends State<CardEx01> {
//   bool boolVal1 = false;
//   bool boolVal2 = false;

//   double sliderelevation = 10;
//   double sliderMargin = 10;
//   double sliderBorderRadius = 10;
//   Color _startcolor = Colors.orange;
//   Color _startShadow = Colors.brown;
//   Clip clipBehavior = Clip.antiAlias;
//   BorderStyle borderStyle = BorderStyle.none;

//   double sliderWidth = 5;
//   Color _startcolor1 = Colors.pink;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Card'),
//       ),
//       body: Center(
//         child: Container(
//           child: Card(
//             semanticContainer: https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter,
//             clipBehavior: clipBehavior,
//             shadowColor: _startShadow,
//             color: _startcolor,
//             borderOnForeground: boolVal1,
//             margin: EdgeInsets.all(sliderMargin),
//             shape: RoundedRectangleBorder(
//               side: BorderSide(
//                   width: sliderWidth, color: _startcolor1, style: borderStyle),
//               borderRadius: BorderRadius.circular(sliderBorderRadius),
//             ),
//             elevation: sliderelevation,
//             child: Container(
//                 width: 320,
//                 height: 100,
//                 child: Center(child: Text('Hello World'))),
//           ),
//         ),
//       ),
//       bottomNavigationBar: getBottomBar(),
//     );
//   }

//   Widget getBottomBar() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         CustSlider(
//           onValueChange: (val) {
//             setState(() {
//               sliderelevation = val;
//             });
//           },
//           widthVal: 250,
//           divide: 10,
//           maxValue: 100,
//           minValue: 1,
//           propText: "   elevation:",
//           sliderVal: sliderelevation,
//         ),
//         CustomValues(
//           datatype: Clip.values,
//           defaultVal: clipBehavior,
//           propText: "   clipBehavior:",
//           onValueChanged: (dynamic newValue) {
//             setState(() {
//               clipBehavior = newValue;
//             });
//           },
//         ),
//         CustSlider(
//           onValueChange: (val) {
//             setState(() {
//               sliderBorderRadius = val;
//             });
//           },
//           widthVal: 250,
//           divide: 10,
//           maxValue: 100,
//           minValue: 1,
//           propText: "   shape:(borderRadius:)",
//           sliderVal: sliderBorderRadius,
//         ),
//         CustSlider(
//           onValueChange: (val) {
//             setState(() {
//               sliderMargin = val;
//             });
//           },
//           widthVal: 250,
//           divide: 10,
//           maxValue: 175,
//           minValue: 80,
//           propText: "   margin:",
//           sliderVal: sliderMargin,
//         ),
//         CustColor(
//           propText: "   color:",
//           startColor: _startcolor,
//           onValueChange: (value) {
//             setState(() {
//               _startcolor = value;
//             });
//           },
//         ),
//         CustColor(
//           propText: "   shadowColor:",
//           startColor: _startShadow,
//           onValueChange: (value) {
//             setState(() {
//               _startShadow = value;
//             });
//           },
//         ),
//         CustomValues(
//           datatype: BorderStyle.values,
//           defaultVal: borderStyle,
//           propText: "   borderStyle:",
//           onValueChanged: (dynamic newValue) {
//             setState(() {
//               borderStyle = newValue;
//             });
//           },
//         ),
//         CustSlider(
//           onValueChange: (val) {
//             setState(() {
//               sliderWidth = val;
//             });
//           },
//           widthVal: 250,
//           divide: 10,
//           maxValue: 20,
//           minValue: 10,
//           propText: "   width:",
//           sliderVal: sliderWidth,
//         ),
//         CustColor(
//           propText: "   borderColor:",
//           startColor: _startcolor1,
//           onValueChange: (value) {
//             setState(() {
//               _startcolor1 = value;
//             });
//           },
//         ),
//         Row(
//           children: [
//             Text('   semanticContainer:'),
//             Radio(
//                 value: true,
//                 groupValue: boolVal2,
//                 onChanged: (dynamic value) {
//                   setState(() {
//                     boolVal2 = value;
//                   });
//                 }),
//             Text('true'),
//             Radio(
//                 value: false,
//                 groupValue: boolVal2,
//                 onChanged: (dynamic value) {
//                   setState(() {
//                     boolVal2 = value;
//                   });
//                 }),
//             Text('false'),
//           ],
//         )
//       ],
//     );
//   }
// }

// class CustSlider extends StatelessWidget {
//   double widthVal;
//   double minValue;
//   double maxValue;
//   double sliderVal;
//   String propText;
//   int divide;
//   Function(dynamic) onValueChange;
//   CustSlider(
//       {required this.widthVal,
//       required this.maxValue,
//       required this.minValue,
//       required this.divide,
//       required this.propText,
//       required this.sliderVal,
//       required this.onValueChange});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(propText),
//         SizedBox(
//           width: widthVal,
//           child: Slider(
//               label: sliderVal.toStringAsFixed(1),
//               min: minValue,
//               max: maxValue,
//               divisions: divide,
//               value: sliderVal == null || sliderVal < minValue
//                   ? minValue
//                   : sliderVal,
//               onChanged: (value) {
//                 sliderVal = value;
//                 onValueChange(value);
//               }),
//         ),
//       ],
//     );
//   }
// }

// // ignore: must_be_immutable
// class CustomValues extends StatelessWidget {
//   Function(dynamic) onValueChanged;
//   dynamic defaultVal;
//   List<dynamic> datatype;
//   String propText;

//   CustomValues({
//     required this.datatype,
//     required this.defaultVal,
//     required this.propText,
//     required this.onValueChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(propText),
//         DropdownButton(
//             value: defaultVal,
//             onChanged: (value) {
//               defaultVal = value;
//               onValueChanged(value);
//             },
//             items: datatype
//                 .map((e) => DropdownMenuItem(
//                       child: Text(e.toString()),
//                       value: e,
//                     ))
//                 .toList()),
//       ],
//     );
//   }
// }

// // ignore: must_be_immutable
// class CustColor extends StatelessWidget {
//   Function(dynamic) onValueChange;
//   Color startColor;
//   final String propText;
//   CustColor(
//       {required this.propText,
//       required this.startColor,
//       required this.onValueChange});

//   Map<String, MaterialColor> dropdownColor = {
//     "Yellow": Colors.yellow,
//     "Red": Colors.red,
//     "Blue": Colors.blue,
//     "Grey": Colors.grey,
//     "Pink": Colors.pink,
//     "Green": Colors.green,
//     "Orange": Colors.orange,
//     "Purple": Colors.purple,
//     "Brown": Colors.brown,
//     "Cyan": Colors.cyan,
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(propText),
//         DropdownButton(
//             value: startColor,
//             onChanged: (dynamic value) {
//               startColor = value;
//               onValueChange(value);
//             },
//             items: dropdownColor
//                 .map((key, value) => MapEntry(
//                     key,
//                     DropdownMenuItem(
//                       child: Text("Colors." + key),
//                       value: value,
//                     )))
//                 .values
//                 .toList()),
//       ],
//     );
//   }
// }

// // Step 1
// /*
//              bottomNavigationBar: _getBottomBar(),
// */
// // Step 2
// /*

//  Widget _getBottomBar() {
//     return Material(
//       color: Theme.of(context).primaryColorLight,
//       child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//       ]),
//     );
//   }
// Step 3
//       double sliderVal =0;

//       CustSlider(
//             widthVal: 250,
//             maxValue: 100,
//             minValue: 10,
//             divide: 10,
//             propText: 'fontsize:',
//             sliderVal: sliderVal1,
//             onValueChange: (onChange) {
//               setState(() {
//                 sliderVal1 = onChange;
//               });
//             }),

// FontWeight _fontWeight = FontWeight.bold;
//  CustomValues(
//               datatype: FontWeight.values,
//               defaultVal: _fontWeight,
//               propText: 'fontWeight:',
//               onValueChanged: (onValueChanged1) {
//                 setState(() {
//                   _fontWeight = onValueChanged1;
//                 });
//               }),

//            Color selectColor = Colors.green;
//            CustColor(
//             protext: "color:",
//             startColor: selectColor,
//             onValueChange: (value) {
//               setState(() {
//                 selectColor = value;
//               });
//             },
//           )
// */
// void showAlert(BuildContext context, String var1) {
//   showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//             content: Text(var1),
//           ));
// }
