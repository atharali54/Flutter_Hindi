import 'package:flutter/material.dart';

class TextEx01Screen extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text('Simple Text Example'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),

            //====================
            //   Basic Text
            //====================
            Container(
              margin: EdgeInsets.all(4),
              alignment: Alignment.center,
              child: Text(
                ' Basic Text',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                ),
              ),
            ),
            mydivider,
            //====================
            //   Text Color
            //====================
            Container(
              margin: EdgeInsets.all(4),
              alignment: Alignment.center,
              child: Text(
                '-- COLOR --',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Container(
                margin: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //====================
                    //   Text Color1
                    //====================
                    Text(" Text 1 ",
                        style: TextStyle(color: Colors.blue, fontSize: 20.0)),

                    //====================
                    //   Text Color2
                    //====================
                    Text(" Text 2 ",
                        style: TextStyle(color: Colors.green, fontSize: 20.0)),

                    //====================

                    //   Text Color4  Custom

                    Text(" Text 3 (Custom) ",
                        style: TextStyle(
                            color: Color(0xFFB78093), fontSize: 20.0)),
                  ],
                )),
            mydivider,
            //================
            //   Text Size
            //================
            Container(
              margin: EdgeInsets.all(4),
              alignment: Alignment.center,
              child: Text(
                '-- SIZE  --',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("12.0",
                    style: TextStyle(color: Colors.green, fontSize: 12.0)),
                Text("16.0",
                    style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                Text("18.0",
                    style: TextStyle(color: Colors.red, fontSize: 18.0)),
                Text("20.0",
                    style: TextStyle(color: Colors.yellow, fontSize: 20.0)),
                Text("22.0",
                    style: TextStyle(color: Colors.pink, fontSize: 22.0)),
                Text("24.0",
                    style: TextStyle(color: Colors.green, fontSize: 24.0)),
              ],
            ),
            mydivider,
            //==================
            //   Text FontStyle
            //==================
            Container(
              margin: EdgeInsets.all(4),
              alignment: Alignment.center,
              child: Text(
                '-- FontStyle  --',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Wrap(
              verticalDirection: VerticalDirection.down,
              alignment: WrapAlignment.start,
              children: <Widget>[
                //  Normal
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Normal",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal)),
                ),

                //  Bold
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Bold",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),

                //  Italic
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Italic",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic)),
                ),

                //  LineThrough
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("LineThrough",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          decoration: TextDecoration.lineThrough)),
                ),

                //  OverLine
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("OverLine",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          decoration: TextDecoration.overline)),
                ),

                //  UnderLine
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("UnderLine",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          decoration: TextDecoration.underline)),
                ),
              ],
            ),
            mydivider,
            //====================
            //   Text FontFamily
            //====================
            Container(
              margin: EdgeInsets.all(4),
              alignment: Alignment.center,
              child: Text(
                '-- FontFamily  --',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Row(
              children: <Widget>[
                //  Raleway
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Raleway",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Raleway Regular')),
                ),

                //   Roboto
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Roboto",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      )),
                ),
              ],
            ),
            mydivider,
            //====================
            //   Text Overflow
            //====================
            Container(
              margin: EdgeInsets.all(4),
              alignment: Alignment.center,
              child: Text(
                '-- Overflow  --',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Wrap(
              verticalDirection: VerticalDirection.down,
              alignment: WrapAlignment.start,
              children: <Widget>[
                //  TextOverflow.clip
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                  child: Text(
                      "- ( long Text with TextOverflow.clip property ) Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets.",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                ),

                //  TextOverflow.ellipsis
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                  child: Text(
                      "- ( long Text with TextOverflow.ellipsis property ) Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets.",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                  child: Text(
                      "- ( long Text with TextOverflow.fade property ) Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets.",
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                ),
              ],
            ),

            mydivider,
          ],
        ),
      ),
    );
  }
}
