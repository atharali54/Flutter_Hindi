import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

// ignore: must_be_immutable
class HinSlider extends StatelessWidget {
  double width;
  double min;
  double max;
  int divide;
  String propName;
  double sliderVal;
  Function(dynamic) onValueChange;
  HinSlider(
      {@required this.width,
      @required this.propName,
      @required this.onValueChange,
      @required this.min,
      @required this.max,
      @required this.divide,
      @required this.sliderVal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(propName),
        SizedBox(
          width: width,
          child: Slider(
            min: min,
            max: max,
            divisions: divide,
            value: sliderVal,
            onChanged: onValueChange,
          ),
        ),
      ],
    );
  }
}
//  ==============     SLIDER CODE END================

// ignore: must_be_immutable
class CusBool extends StatelessWidget {
  String propName;
  bool groupVal;
  String fstText;
  String secText;
  Function(bool) onValueChange;
  CusBool(
      {@required this.propName,
      @required this.fstText,
      @required this.secText,
      @required this.groupVal,
      @required this.onValueChange});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(propName),
        Radio(
          value: true,
          groupValue: groupVal,
          onChanged: onValueChange,
        ),
        Text(fstText),
        Radio(
          value: false,
          groupValue: groupVal,
          onChanged: onValueChange,
        ),
        Text(secText),
      ],
    );
  }
}
//
// class WidgetFab extends StatelessWidget {
//   const WidgetFab({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       tooltip: "Go Back",
//       onPressed: () {
//         Navigator.pop(context);
//       },
//       child: Icon(Icons.first_page),
//     );
//   }
// }
// ignore: must_be_immutable
class CusFloatBtn extends StatelessWidget {
  double onPressedVal;
  // dynamic defaultVal;

  CusFloatBtn({@required this.onPressedVal});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FloatingActionButton(
      child: Icon(
        Icons.first_page,
        color: Colors.red,
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      backgroundColor: Colors.orange,
      elevation: 5,
    ));
  }
}

//=========TRUE/FALSE(BOOL)  END===================
// ignore: must_be_immutable
class CusDropdown extends StatelessWidget {
  Function(dynamic) onValueChanged;
  dynamic defaultVal;
  List<dynamic> datatype;
  String propText;

  CusDropdown({
    @required this.datatype,
    @required this.defaultVal,
    @required this.propText,
    @required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(propText,
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14)),
        DropdownButton(
            value: defaultVal,
            onChanged: (value) {
              defaultVal = value;
              onValueChanged(value);
            },
            items: datatype
                .map((e) => DropdownMenuItem(
                      child: Text(e.toString()),
                      value: e,
                    ))
                .toList()),
      ],
    );
  }
}

//===================== CUSTOM COLOR DRODOWN Start ====
// ignore: must_be_immutable
class CustColor extends StatelessWidget {
  Function(dynamic) onValueChange;
  Color startColor;
  final String propText;
  CustColor(
      {@required this.propText,
      @required this.startColor,
      @required this.onValueChange});

  Map<String, MaterialColor> dropdownColor = {
    "Yellow": Colors.yellow,
    "Red": Colors.red,
    "Blue": Colors.blue,
    "Grey": Colors.grey,
    "Pink": Colors.pink,
    "Green": Colors.green,
    "Orange": Colors.orange,
    "Purple": Colors.purple,
    "Brown": Colors.brown,
    "Cyan": Colors.cyan,
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(propText,
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
        DropdownButton(
            value: startColor,
            onChanged: (dynamic value) {
              startColor = value;
              onValueChange(value);
            },
            items: dropdownColor
                .map((key, value) => MapEntry(
                    key,
                    DropdownMenuItem(
                      child: Text(key),
                      value: value,
                    )))
                .values
                .toList()),
      ],
    );
  }
}

//=================== Alignment Dropdown start ======
// ignore: must_be_immutable
class CustAlignment extends StatelessWidget {
  Function(dynamic) onValueChange;
  Alignment defaultAlignment;
  final String propText;
  CustAlignment(
      {@required this.propText,
      @required this.defaultAlignment,
      @required this.onValueChange});

  Map<String, Alignment> alignment = {
    "Center": Alignment.center,
    "BottomLeft": Alignment.bottomLeft,
    "BottomCenter": Alignment.bottomCenter,
    "BottomRight": Alignment.bottomRight,
    "TopLeft": Alignment.topLeft,
    "TopRight": Alignment.topRight,
    "TopCenter": Alignment.topCenter,
    "CenterLeft": Alignment.centerLeft,
    "CenterRight": Alignment.centerRight,
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(propText,
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14)),
        DropdownButton(
            value: defaultAlignment,
            onChanged: (dynamic value) {
              defaultAlignment = value;
              onValueChange(value);
            },
            items: alignment
                .map((key, value) => MapEntry(
                    key,
                    DropdownMenuItem(
                      child: Text("Alignment." + key),
                      value: value,
                    )))
                .values
                .toList()),
      ],
    );
  }
}
