import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderEx02 extends StatefulWidget {
  @override
  _SliderEx02State createState() => _SliderEx02State();
}

class _SliderEx02State extends State<SliderEx02> {
  final List<String> imagesList = [
    'assets/flag.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          "Slider Local Image",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            height: 200,
            aspectRatio: 16 / 2,
            enableInfiniteScroll: true,
          ),
          items: imagesList
              .map(
                (item) => Center(
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.orange,
                    // decoration:
                    //     BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
