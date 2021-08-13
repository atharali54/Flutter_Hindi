import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hindi/API/ApiHome.dart';
import 'package:flutter_hindi/AnimationTextKit/AnimationTextKitHome.dart';
import 'package:flutter_hindi/AppBar/AppBarHome.dart';
import 'package:flutter_hindi/Buttons/ButtonHomeScreen.dart';
import 'package:flutter_hindi/Card/CardEx01.dart';
import 'package:flutter_hindi/CodeView/CodeViewHome.dart';
import 'package:flutter_hindi/ColorPicker/ColorPickerHome.dart';

import 'package:flutter_hindi/DatePicker/DatePickerHome.dart';
import 'package:flutter_hindi/Divider/DividerHomeScreen.dart';
import 'package:flutter_hindi/Drawer/DrawerHome.dart';
import 'package:flutter_hindi/DropDown/DropdownHome.dart';
import 'package:flutter_hindi/Flexible/FlexibleHome.dart';
import 'package:flutter_hindi/Functions.dart';

import 'package:flutter_hindi/GiffyDialog/GiffyHomeScreen.dart';
import 'package:flutter_hindi/GridView/GridViewHomeScreen.dart';
import 'package:flutter_hindi/HomeScreen/MultipleChildScreen.dart';

import 'package:flutter_hindi/HomeScreen/SingleChildScreen.dart';
import 'package:flutter_hindi/ImageAsset/ImageAssetHome.dart';
import 'package:flutter_hindi/InterviewQues/AllQues01.dart';

import 'package:flutter_hindi/ListWheelScroll/ListViewScrollHome.dart';

import 'package:flutter_hindi/ProgressBar/ProgressBarHome.dart';
import 'package:flutter_hindi/Slider/SliderHomeScreen.dart';
import 'package:flutter_hindi/SplashScreen/SplashHomeScreen.dart';

import 'package:flutter_hindi/Text/TextHomeScreen.dart';
import 'package:flutter_hindi/TextField/TextFieldHome.dart';
import 'package:flutter_hindi/Transform/TranslateEx01.dart';
import 'package:flutter_hindi/UrlLauncher/UrlLauncherHome.dart';
import 'package:flutter_hindi/YouTubePlayer/YouTubeHomeScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_hindi/test2.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );

  final mytextstyle = TextStyle(
      color: Colors.orange,
      fontSize: 16.0,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hindi Tutorial',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          Stack(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FlutterLogo(
                  size: 80,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'Flutter',
                      textStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 32.0,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  totalRepeatCount: 50,
                  onTap: () {},
                ),
              ]),
              Positioned(
                top: 55,
                right: 140,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Version 2.2',
                      textStyle: TextStyle(
                          fontSize: 14.0,
                          // color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      colors: [
                        Colors.green,
                        Colors.red,
                        Colors.yellow,
                        Colors.blue
                      ],
                    ),
                  ],
                  totalRepeatCount: 50,
                  isRepeatingAnimation: true,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),

          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'सिंगल चाइल्ड विजेट (Single Child)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingleChildPage(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'मल्टिपल चाइल्ड विजेट (Multiple Child) ',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MultipleChildPage(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'ऐपबार (AppBar)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppBarHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'टेक्स्ट (Text Widget)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'टेक्स्ट फील्ड (TextField)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextFieldHome(),
                  ),
                );
              },
            ),
          ),

          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'ड्रॉपडाउन (Dropdown)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrodownHome(),
                  ),
                );
              },
            ),
          ),

          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'ग्रिड व्यू (GridView)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'प्रोग्रेस बार( ProgressBar)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProgressBarHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'फ्लेक्सिबल  (Flexible)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlexibleHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'डिवाइडर (Divider)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DividerHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'ListWheelScroolView',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListWheelHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'ड्रावर  (Drawer)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrawerHome(),
                  ),
                );
              },
            ),
          ),

          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'इमेज (Image Assets)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageAssetHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          // InkWell(
          //   child: ListTile(
          //     leading: Icon(Icons.forward,color: Colors.brown,),
          //     title: Text('कंटेनर (Container)', style: mytextstyle),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => ContainerHome(),
          //       ),
          //     );
          //   },
          // ),
          // mydivider,
          InkWell(
            child: ListTile(
              leading: Icon(
                Icons.forward,
                color: Colors.brown,
              ),
              title: Text(
                'कार्ड (Card)',
                style: mytextstyle,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardEx01(),
                ),
              );
            },
          ),

          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'गिफ्फी डायलॉग (GiffyDialog)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GiffyHomeScreen(),
                  ),
                );
              },
            ),
          ),

          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'कोड वीव (CodeView) ',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeViewHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'नेविगेशन बार (NavigationBar) ',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Que02Curved11(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'टेक्स्ट विजेट (Text Widget)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'स्लाइडर (Slider)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SliderHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(Icons.forward),
                title: Text(
                  'ट्रांसफॉर्म  (Transform)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransformEx01(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'बटन (Buttons)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ButtonHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  ' स्प्लैश स्क्रीन (Splash)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SplashHomeScreen(),
                  ),
                );
              },
            ),
          ),

          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'यू टूब प्लेयर (YouTube Player)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YouTubeHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'यूआरएल लॉन्चर (URL Launcher) ',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UrlLauncherHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'डेटपिकर (DatePicker)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DatePickerHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'कलर पिकर (ColorPicker)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColorPickerHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'एनीमेशन टेक्स्टकिट (AnimationTextKit)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextKitHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'एपीआई (API)',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApiHomeScreen(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'Question/Ans',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllQuesList(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.only(
              right: 20,
              top: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen02()));
                    },
                    child: Text(
                      'NEXT',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.orange,
      //   height: 46,
      //   color: Colors.orange[200],
      //   items: [
      //     Icon(
      //       Icons.info,
      //       size: 30,
      //       color: Colors.blue,
      //     ),
      //     Icon(
      //       Icons.image,
      //       size: 30,
      //       color: Colors.pink,
      //     ),
      //     Icon(
      //       Icons.video_call,
      //       size: 30,
      //       // color: Colors.pink,
      //     )
      //   ],
      //   onTap: (index) {
      //     setState(
      //       () {
      //         _selectedIndex1 = index;
      //         if (_selectedIndex1 == 0) {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => HomeScreen02()));
      //         } else if (_selectedIndex1 == 1) {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => MyAppImage()));
      //         } else if (_selectedIndex1 == 2) {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => MyAppImage()));
      //         }
      //       },
      //     );
      //   },
      // ),
      //---------------------------------
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange[200],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          //currentIndex: _selectedIndex,
          selectedItemColor: Colors.brown,
          iconSize: 30,
          // onTap: (){},
          elevation: 5),
      //==============================
    );
  }
}

//-----------------------------------
class HomeScreen02 extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      color: Colors.orange,
      fontSize: 18.0,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'HINDI TUTORIAL',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
         // CusBool(propName: propName, fstText: fstText, secText: secText, groupVal: groupVal, onValueChange: onValueChange)
          SizedBox(height: 5.0),
          mydivider,
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Text(
                        'BACK',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen03()));
                      },
                      child: Text(
                        'NEXT',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//HomeScreen03
class HomeScreen03 extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      color: Colors.orange,
      fontSize: 18.0,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'HINDI TUTORIAL',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          //SizedBox(height: 20.0),
          // https://medium.com/flutter-community/flutter-expansion-collapse-view-fde9c51ac438
          // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //   FlutterLogo(
          //     size: 80,
          //   ),
          //   Text(
          //     'Flutter ',
          //     style: TextStyle(
          //         fontSize: 36.0,
          //         color: Colors.brown,
          //         fontStyle: FontStyle.italic),
          //   )
          // ]),

          SizedBox(height: 5.0),

          Container(
            height: 36,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.forward,
                  color: Colors.brown,
                ),
                title: Text(
                  'यूआरएल लॉन्चर (URL Launcher) ',
                  style: mytextstyle,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UrlLauncherHome(),
                  ),
                );
              },
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen02()));
                    },
                    child: Text(
                      'BACK',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
