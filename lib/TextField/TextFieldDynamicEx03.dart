import 'package:flutter/material.dart';
import 'package:flutter_hindi/Functions.dart';

class TextFieldDynamicEx03 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TextFieldDynamicEx03> {
  bool boolObscure = false;
  bool boolAutocorrect = false;
  bool boolFill = false;
  bool boolenable = true;
  double sliderRadious = 10;
  double sliderLength = 10;
  double sliderCursorW = 8;
  double sliderCursorR = 8;

  TextCapitalization textCapitalization = TextCapitalization.none;
  TextInputType textInputType = TextInputType.number;

  // List<String> inputlist = [
  //   'Text',
  //   'multiline',
  //   'number',
  //   'phone',
  //   'datetime',
  //   'emailAddress',
  //   'url',
  //   'visiblePassword',
  //   'name',
  //   'streetAddress'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Dynamic 1'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        child: TextField(
          // keyboardType: TextInputType.name,
          cursorColor: Colors.green,

          cursorRadius: Radius.circular(sliderCursorR),
          cursorWidth: sliderCursorW,
          obscureText: boolObscure,
          autocorrect: false,
          textCapitalization: textCapitalization,
          maxLength: sliderLength.round(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.note),
            suffixIcon: Icon(Icons.remove_red_eye),
            filled: boolFill,
            fillColor: Colors.blue[200],
            contentPadding: EdgeInsets.all(14),
            enabled: boolenable,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(sliderRadious),
            ),
            labelText: 'User Name',
            hintText: 'Enter Your Name',
          ),
          // inputFormatters: [
          //   FilteringTextInputFormatter.allow(RegExp(r"^\d+\.?\d{0,2}")),
          // ],
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

//---------------------------------------------------------
  Widget _getBottomBar() {
    return Container(
      padding: EdgeInsets.all(4),
      color: Colors.orange[100],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Row(
          //   children: [
          //     Text('keyboardType:'),
          //     DropdownButton(
          //         value: textInputType,
          //         onChanged: (dynamic newvalue) {
          //           setState(() {
          //             textInputType = newvalue;
          //           });
          //         },
          //         items: TextInputType.values
          //             .map((val) => DropdownMenuItem(
          //                 value: val,
          //                 child: Text(
          //                   inputlist[val.index],
          //                   style: TextStyle(fontSize: 14),
          //                 )))
          //             .toList())
          //   ],
          // ),
          Row(
            children: [
              CusBool(
                  propName: 'obscureText:',
                  fstText: 'true',
                  secText: 'false',
                  groupVal: boolObscure,
                  onValueChange: (bool value) {
                    setState(() {
                      boolObscure = value;
                    });
                  }),
            ],
          ),
          Row(
            children: [
              CusBool(
                  propName: 'autocorrect:',
                  fstText: 'true',
                  secText: 'false',
                  groupVal: boolAutocorrect,
                  onValueChange: (bool value) {
                    setState(() {
                      boolAutocorrect = value;
                    });
                  }),
            ],
          ),
          Row(children: [
            CusBool(
                propName: 'enable:',
                fstText: 'true',
                secText: 'false',
                groupVal: boolenable,
                onValueChange: (bool value) {
                  setState(() {
                    boolenable = value;
                  });
                }),
          ]),
          Row(
            children: [
              Text('textCapitalization:'),
              DropdownButton(
                  value: textCapitalization,
                  onChanged: (dynamic newvalue) {
                    setState(() {
                      textCapitalization = newvalue;
                    });
                  },
                  items: TextCapitalization.values
                      .map((val) => DropdownMenuItem(
                          value: val,
                          child: Text(
                            val.toString(),
                            style: TextStyle(fontSize: 14),
                          )))
                      .toList())
            ],
          ),
          Row(
            children: [
              HinSlider(
                propName: 'maxLength',
                width: 120,
                min: 1,
                max: 100,
                divide: 50,
                sliderVal: sliderLength,
                onValueChange: (val) {
                  setState(() {
                    sliderLength = val;
                  });
                },
              ),
              HinSlider(
                propName: 'BorderRadius.circular',
                width: 120,
                min: 1,
                max: 100,
                divide: 50,
                sliderVal: sliderRadious,
                onValueChange: (val) {
                  setState(() {
                    sliderRadious = val;
                  });
                },
              ),
            ],
          ),

          Row(
            children: [
              // Text('filled:'),
              // Radio(
              //     value: true,
              //     groupValue: boolFill,
              //     onChanged: (bool value) {
              //       setState(() {
              //         boolFill = value;
              //       });
              //     }),
              // Text('true'),
              // Radio(
              //     value: false,
              //     groupValue: boolFill,
              //     onChanged: (bool value) {
              //       setState(() {
              //         boolFill = value;
              //       });
              //     }),
              // Text('false'),
            ],
          ),
          Row(
            children: [
              HinSlider(
                propName: 'CursorWidth',
                width: 120,
                min: 1,
                max: 50,
                divide: 50,
                sliderVal: sliderCursorW,
                onValueChange: (val) {
                  setState(() {
                    sliderCursorW = val;
                  });
                },
              ),
              HinSlider(
                propName: 'CursorRadious',
                width: 120,
                min: 1,
                max: 50,
                divide: 50,
                sliderVal: sliderCursorR,
                onValueChange: (val) {
                  setState(() {
                    sliderCursorR = val;
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
