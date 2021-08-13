import 'package:flutter/material.dart';

class TextEx02Screen extends StatelessWidget {
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
        title: Text('Rich Text Example'),
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
                ' Rich Text (रिच टेक्स्ट)',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'कभी-कभी हम एक  लाइन   या  पैराग्राफ  में  अलग  अलग  variation लगाना  हो  उस स्थिति में, हमें   रिच  टेक्स्ट  विजेट का उपयोग करना चाहिए जो हमें कई विजेट स्विच किए बिना कई variation करने की अनुमति देता है।\n  रिच टेक्स्ट  उदहारण  नीचे  देखे-  ',
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            mydivider,

            //   Text TextSpan
            //====================
            Container(
              margin: EdgeInsets.all(8.0),
              child: Text(
                " उदहारण :-",
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(18),
              child: RichText(
                text: TextSpan(
                    text: 'I like \n',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Flutter hindi',
                        style: TextStyle(color: Colors.green, fontSize: 24),
                      ),
                      TextSpan(
                        text: ' tutorial.',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 30),
                      )
                    ]),
              ),
            ),

            mydivider,
          ],
        ),
      ),
    );
  }
}
