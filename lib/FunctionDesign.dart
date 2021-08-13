import 'package:flutter/material.dart';
import 'package:flutter_hindi/Functions.dart';

class Design extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Design> {
  ImageRepeat imageRepeat = ImageRepeat.noRepeat;
  BoxFit boxFit = BoxFit.scaleDown;
  BlendMode blendMode = BlendMode.colorBurn;

  Map<String, MaterialColor> colormap = {
    "Red": Colors.red,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Yellow": Colors.yellow,
    "Orange": Colors.orange,
    "Brown": Colors.brown,
    "Pink": Colors.pink,
    "Grey": Colors.grey,
    "BlueGrey": Colors.blueGrey,
  };
  Color _selectOnPrimaryColor1 = Colors.grey;

  // ignore: unused_field
  final List<Alignment> _dropdownAlignment = [
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];
  Alignment _selectedAlignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Image Properties'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          //color: Colors.green,
          decoration: new BoxDecoration(
            color: Colors.green,
            image: new DecorationImage(
              image: new ExactAssetImage('assets/children.jpg'),
              // image: NetworkImage(
              //     'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2020/06/2020061292.jpg'),
              fit: boxFit, alignment: _selectedAlignment,
              repeat: imageRepeat,
              colorFilter: ColorFilter.mode(
                _selectOnPrimaryColor1,
                blendMode,
              ),

              // colorFilter: ColorFilter.mode(
              //     color:_color,blendMode)),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Colors.blue[200],
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              // Text(
              //   'color :',
              //   style: TextStyle(
              //       color: _selectOnPrimaryColor1,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16),
              // ),
              CustColor(
                  propText: 'color:',
                  startColor: _selectOnPrimaryColor1,
                  onValueChange: (newVal) {
                    setState(() {
                      _selectOnPrimaryColor1 = newVal;
                    });
                  }),
              // DropdownButton(
              //     value: _selectOnPrimaryColor1,
              //     onChanged: (dynamic newVal) {
              //       if (newVal != null) {
              //         setState(() => _selectOnPrimaryColor1 = newVal);
              //       }
              //     },
              //     items: colormap
              //         .map((key, value) => MapEntry(
              //             key,
              //             DropdownMenuItem(
              //               child: Text('Colors.' + key),
              //               value: value,
              //             )))
              //         .values
              //         .toList()),
              // Text(
              //   'Blen:',
              //   style: TextStyle(
              //       color: Colors.red,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16),
              // ),
              CusDropdown(
                datatype: BlendMode.values,
                defaultVal: blendMode,
                propText: 'blenMode',
                onValueChanged: (dynamic newvalue) {
                  setState(() {
                    blendMode = newvalue;
                  });
                },
              ),
              // DropdownButton(
              //     value: blendMode,
              //     onChanged: (dynamic newvalue) {
              //       setState(() {
              //         blendMode = newvalue;
              //       });
              //     },
              //     items: BlendMode.values
              //         .map((val) => DropdownMenuItem(
              //             value: val,
              //             child: Text(
              //               val.toString(),
              //               style: TextStyle(fontSize: 12),
              //             )))
              //         .toList())
            ]),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CusDropdown(
                  datatype: BoxFit.values,
                  defaultVal: boxFit,
                  propText: 'fit:',
                  onValueChanged: (dynamic newvalue) {
                    setState(() {
                      boxFit = newvalue;
                    });
                  },
                ),

                // Text(
                //   'fit:',
                //   style: TextStyle(
                //       color: Colors.red,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 16),
                // ),
                // DropdownButton(
                //     value: boxFit,
                //     onChanged: (dynamic newvalue) {
                //       setState(() {
                //         boxFit = newvalue;
                //       });
                //     },
                //     items: BoxFit.values
                //         .map((val) => DropdownMenuItem(
                //             value: val,
                //             child: Text(
                //               val.toString(),
                //               style: TextStyle(fontSize: 12),
                //             )))
                //         .toList()),
                Spacer(),
                CusDropdown(
                  datatype: ImageRepeat.values,
                  defaultVal: imageRepeat,
                  propText: 'repeat:',
                  onValueChanged: (dynamic newvalue) {
                    setState(() {
                      imageRepeat = newvalue;
                    });
                  },
                ),

                // Text(
                //   'repeat:',
                //   style: TextStyle(
                //       color: Colors.red,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 16),
                // ),
                // DropdownButton(
                //     value: imageRepeat,
                //     onChanged: (dynamic newvalue) {
                //       setState(() {
                //         imageRepeat = newvalue;
                //       });
                //     },
                //     items: ImageRepeat.values
                //         .map((val) => DropdownMenuItem(
                //             value: val,
                //             child: Text(
                //               val.toString(),
                //               style: TextStyle(fontSize: 12),
                //             )))
                //         .toList())
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Text(
                //   'alignment:',
                //   style: TextStyle(
                //       color: Colors.red,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 16),
                // ),
                CustAlignment(
                    propText: 'alignment:',
                    defaultAlignment: _selectedAlignment,
                    onValueChange: (val) {
                      setState(() {
                        _selectedAlignment = val;
                      });
                    }),
                // DropdownButton(
                //   hint: Text('Select ...'),
                //   items: _dropdownAlignment
                //       .map((element) => DropdownMenuItem(
                //             child: Center(
                //               child: Text(element.toString()),
                //             ),
                //             value: element,
                //           ))
                //       .toList(),
                //   onChanged: (Alignment value) {
                //     setState(() {
                //       _selectedAlignment = value;
                //     });
                //   },
                //   isExpanded: false,
                //   value: _selectedAlignment,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
