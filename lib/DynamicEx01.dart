import 'package:flutter/material.dart';

class DynamicEx01 extends StatefulWidget {
  @override
  _DynamicEx01State createState() => _DynamicEx01State();
}

class _DynamicEx01State extends State<DynamicEx01> {
  // FlexFit.tight

  BoxFit boxFit = BoxFit.scaleDown;
  BlendMode blendMode = BlendMode.colorBurn;
  // int myColor = 0;
  // BlendMode blendMode = BlendMode.colorBurn;
  // final List<Color> imgColor = [
  //   Colors.red,
  //   Colors.blue,
  //   Colors.orange,
  //   Colors.yellow,
  //   Colors.brown,
  //   Colors.pink,
  //   Colors.greenAccent
  // ];
  Map<String, MaterialColor> colormap = {
    "Red": Colors.red,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Yellow": Colors.yellow,
    "Orange": Colors.orange,
  };
  Color _selectOnPrimaryColor1 = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Image Properties'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          //color: Colors.green,
          decoration: new BoxDecoration(
            color: Colors.green,
            image: new DecorationImage(
              image: new ExactAssetImage('assets/children.jpg'),
              // image: NetworkImage(
              //     'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2020/06/2020061292.jpg'),
              fit: boxFit,
              colorFilter: ColorFilter.mode(
                _selectOnPrimaryColor1,
                BlendMode.multiply,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('color:'),
            DropdownButton(
                value: _selectOnPrimaryColor1,
                onChanged: (dynamic newVal) {
                  if (newVal != null) {
                    setState(() => _selectOnPrimaryColor1 = newVal);
                  }
                },
                items: colormap
                    .map((key, value) => MapEntry(
                        key,
                        DropdownMenuItem(
                          child: Text('Colors.' + key),
                          value: value,
                        )))
                    .values
                    .toList()),
          ]),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('fit:'),
              DropdownButton(
                  value: boxFit,
                  onChanged: (dynamic newvalue) {
                    setState(() {
                      boxFit = newvalue;
                    });
                  },
                  items: BoxFit.values
                      .map((val) => DropdownMenuItem(
                          value: val,
                          child: Text(
                            val.toString(),
                            style: TextStyle(fontSize: 12),
                          )))
                      .toList())
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('Blen:'),
              DropdownButton(
                  value: blendMode,
                  onChanged: (dynamic newvalue) {
                    setState(() {
                      blendMode = newvalue;
                    });
                  },
                  items: BlendMode.values
                      .map((val) => DropdownMenuItem(
                          value: val,
                          child: Text(
                            val.toString(),
                            style: TextStyle(fontSize: 12),
                          )))
                      .toList())
            ],
          ),
        ],
      ),
    );
  }
}
