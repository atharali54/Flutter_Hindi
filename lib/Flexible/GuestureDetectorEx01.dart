import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GuestureEx01 extends StatefulWidget {
  @override
  _GuestureEx01State createState() => _GuestureEx01State();
}

class _GuestureEx01State extends State<GuestureEx01> {
  final List<String> imagesList = [
    'assets/c.jpg',
    'assets/d.jpg',
    'assets/e.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Row/Column image'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
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
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/height.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/grp1.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/imgwidth001.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/height.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/grp1.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/imgwidth001.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/height.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/grp1.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Flexible'),
                          content: Image.asset('assets/flexible.JPG'),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Image.asset(
                        'assets/imgwidth001.jpg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
