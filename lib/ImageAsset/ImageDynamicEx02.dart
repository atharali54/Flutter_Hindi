//
import 'package:flutter/material.dart';
import 'package:flutter_hindi/Functions.dart';

class DynamicImgEx02 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<DynamicImgEx02> {
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
          decoration: new BoxDecoration(
            color: Colors.green,
            image: new DecorationImage(
              image: new ExactAssetImage('assets/flag.jpg'),
              fit: boxFit,
              alignment: _selectedAlignment,
              repeat: imageRepeat,
              colorFilter: ColorFilter.mode(
                _selectOnPrimaryColor1,
                blendMode,
              ),
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
              CustColor(
                  propText: 'color:',
                  startColor: _selectOnPrimaryColor1,
                  onValueChange: (newVal) {
                    setState(() {
                      _selectOnPrimaryColor1 = newVal;
                    });
                  }),
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
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustAlignment(
                    propText: 'alignment:',
                    defaultAlignment: _selectedAlignment,
                    onValueChange: (val) {
                      setState(() {
                        _selectedAlignment = val;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
