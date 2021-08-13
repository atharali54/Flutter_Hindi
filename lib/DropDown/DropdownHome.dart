import 'package:flutter/material.dart';
import 'package:flutter_hindi/DropDown/BasicDropdown.dart';

import 'package:flutter_hindi/DropDown/DropdownEx01.dart';
import 'package:flutter_hindi/DropDown/DropdownEx05.dart';
import 'package:flutter_hindi/DropDown/DropdownListWithListDataEx04.dart';
import 'package:flutter_hindi/DropDown/DropdownWithListEx03.dart';
import 'package:flutter_hindi/DropDown/OnSelectChangeContainerChangeColorEx02.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

class DrodownHome extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 16.0,
      fontStyle: FontStyle.italic,
      color: Colors.brown,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ड्रॉपडाउन',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'ड्रॉपडाउन (DropDown Widget)',
              style: mytextstyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              "ड्रॉपडाउन बटन एक material विजेट है जो flutter में एक ड्रॉपडाउन list / menu प्रदर्शित करता है।इसमें यूजर एक  से ज्यादा आइटम्स सेलेक्ट कर  सकता है \nयह एक ड्रॉपडाउन list के अलावा और कुछ नहीं है। हम इस पर क्लिक करने पर users को वस्तुओं की एक list प्रदर्शित करने के लिए इसका उपयोग करेंगे। हमें स्टेटफुल विजेट का उपयोग करना होगा क्योंकि user select के आधार पर ड्रॉपडाउन बटन में  change होगा।",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Properties',
              style: mytextstyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              " value, items ,dropdownColor, DropdownMenuItem , hint, elevation, style, isExpanded,iconEnabledColor,iconSize, disabledHint onChanged ,selectedItemBuilder",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          mydivider,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Basic Code',
                style: mytextstyle,
              ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text('Dropdown'),
                              content: Image.asset('assets/dropdown.JPG'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('OK'))
                              ],
                            )),
                    child: Icon(
                      Icons.image,
                      size: 30,
                      color: Colors.orange,
                    ),
                  )),
            ],
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Examples',
              style: mytextstyle,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Basic()));
              },
              child: Text(
                'Basic',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DropDownEx01()));
              },
              child: Text(
                'DropDown List Ex01',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DropDown02()));
              },
              child: Text(
                'On Select Change Container Color Ex04',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DropDown03()));
              },
              child: Text(
                'Dropdown List Ex03',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DropDown04()));
              },
              child: Text(
                'Dropdown with List Ex04',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 2),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ex05()));
              },
              child: Text(
                'Ex 05',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          mydivider,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class Basic extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: BasicExample(),
          sourceFilePath: 'lib/DropDown/BasicDropdown.dart'),
    );
  }
}

class DropDown02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DropdownEx02(),
          sourceFilePath:
              'lib/DropDown/OnSelectChangeContainerChangeColorEx02.dart'),
    );
  }
}

class DropDown03 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DropdownListEx03(),
          sourceFilePath: 'lib/DropDown/DropdownWithListEx03.dart'),
    );
  }
}

class DropDown04 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: DropdownEx04(),
          sourceFilePath:
              'lib/DropDown/OnSelectChangeContainerChangeColorEx02.dart'),
    );
  }
}
