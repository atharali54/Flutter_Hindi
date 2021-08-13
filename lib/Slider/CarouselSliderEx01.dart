import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderEx01 extends StatefulWidget {
  @override
  _SliderEx01State createState() => _SliderEx01State();
}

class _SliderEx01State extends State<SliderEx01> {
  final List<String> imagesList = [
    'https://thumbs.dreamstime.com/b/landscape-grass-field-green-environment-public-park-use-as-natural-background-backdrop-78426893.jpg',
    'https://image.shutterstock.com/image-illustration/green-screen-looping-animated-background-260nw-1702327750.jpg',

    // 'https://drive.google.com/uc?export=view&id=1WkSGq2ZmWDmS9U-SaxrwV5-nys3gfEeT',
  ];

  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider web '),
      ),
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
            ),
            items: imagesList
                .map(
                  (item) => Center(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
          ),
          mydivider,
        ],
      ),
    );
  }
}
