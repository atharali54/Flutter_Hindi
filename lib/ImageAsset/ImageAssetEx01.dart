import 'package:flutter/material.dart';

class ImageAssetEx01 extends StatelessWidget {
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
          title: Text('Image Ex01'),
        ),
        body: Column(
          children: [
            Text(
              'Image.Assts',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
            //  ------------image1 code start--
            Container(
                width: 350, height: 200, child: Image.asset('assets/c.jpg')),

            //  ------------image2 code end--

            mydivider,
            Text(
              'Image.Network1',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
            //  ------------image1 code start--

            Image.network(
                'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060666.jpg'),
          ],
        ));
  }
}
