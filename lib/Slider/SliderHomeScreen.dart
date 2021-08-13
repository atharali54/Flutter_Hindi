import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';
import 'package:flutter_hindi/Slider/CarouselSliderEx01.dart';
import 'package:flutter_hindi/Slider/CarouselLocalEx02.dart';
import 'package:flutter_hindi/Slider/RangeSliderEx04.dart';
import 'package:flutter_hindi/Slider/SimpleSliderEx03.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class SliderHomeScreen extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 18.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Image Slider',
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
              'Image Slider',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              " Slider easy तरीक़ा  है एक से ज्यादा  images,videos को सुन्दर और आकर्षक तरीके  से अपनी वेबसाइट और Apps के ऊपर display कराने के लिए  ",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Dependency ',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              ' carousel_slider: ^4.0.0',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'Properties ',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              "min, max, divisions, label, mouseCursor, onChanged,inactiveColor, value, height, Items, autoplay, autoplaycurve, aspectRatio, autoPlayAnimationDuration",
              style: TextStyle(
                fontSize: 16.0,
                //fontWeight: FontWeight.bold
              ),
            ),
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              'इम्पोर्ट पैकेज ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Text(
              "import 'package:carousel_slider/carousel_slider.dart';",
              style: TextStyle(
                fontSize: 16.0,
                //fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Basic Code',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 20, top: 2, bottom: 2, right: 20),
                  child: InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text('Image Assets'),
                              content: Image.asset('assets/align.JPG'),
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
            padding: EdgeInsets.only(left: 20, top: 2, bottom: 2, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SimpleSliderEx03()));
                },
                child: Text(
                  'Simple Slider',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 2, bottom: 2, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Slider02()));
                },
                child: Text(
                  'CarouselSlider (Use Local Image)',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 2, bottom: 2, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Slider01()));
                },
                child: Text(
                  'CarouselSlider (Use Web Image)',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 2, bottom: 2, right: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RangeEx04()));
                },
                child: Text(
                  'Range Slider',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
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
        child: Icon(
          Icons.first_page,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Slider01 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: SliderEx01(), sourceFilePath: 'lib/Slider/SliderEx01.dart'),
    );
  }
}

class Slider02 extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: SliderEx02(), sourceFilePath: 'lib/Slider/SliderEx02.dart'),
    );
  }
}
//lib\Slider\SliderEx01.dart