import 'package:flutter/material.dart';
import 'package:flutter_hindi/HomeScreen/HomeScreen.dart';

class AllQuesList extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final myQuestext =
      TextStyle(color: Colors.brown, fontSize: 18, fontWeight: FontWeight.bold);
  final myAnstext =
      TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Basic Questions',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Que 01: हमने कॉलम में कुछ container डाले mainAxisalignment centre CrossAxisalignment end Daali Column leftside centre main Right side centre main Kha nazar aayege\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans01: Column left side center में  दिखाई देंगे ,',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques02: What is the difference between class and widget?\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans02:Flutter has created some predefined packages and libraries that contain some predefined functionalities.....Widget is nothing but a class only but a user can defined its own class whereas widgets are predefined',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques03: Scrollable बनाने के लिए हम scrollchildview व wrap यूज़ करते हैं। दोनों में क्या फर्क होगा।\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans:03: SingleChildScroolView Row के  overflow के  case  work नहीं  करता  है ,SingleChildScroolView में   child उसे   होता  है i or wrap में  children',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques04: क्या हम runApp में widget के स्थान पर क्लास पास कर सकते हैं?\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Ans:04',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques:late String varName ; \n इसमें  हम  late क्यों  use करते है  h?\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans: बिना  late लगाए  ये  हमे  null safty की   error show करता  है  मतलब  की  हम  इसकी  जिम्मेदारी   ले  रहे  है कि  अभी  हम  इसमें  null वैल्यू रहे है  , बाद   में  इसे कोई   न  कोई  वैल्यू  असाइन  हो  जाएगी ',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text: 'Ques:Flexible और Expanded के बीच अंतर बताओ?\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans: Flexible केवल आवश्यक स्थान लेता है, और Expanded सभी उपलब्ध स्थान लेता है। ',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques: Row में  TextField() widget इस्तेमाल करने  पैर  output बताओ?\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans: White screen दिखाई देगी  \n Sizebox or Expanded विजेट use करने पर  डाटा दिखाई दे जायेगा ',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques: Row/Column में  overflow की  प्रॉब्लम को कैसे हल करे?\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans: Use Expanded widget ya SingleChildScroolView widget use krke hum overflow remove kr skte h',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques: Column में  टेस्टफील्ड विजेट  के  overflow होने  पर  keyboard के  ऊपर  error दिखाई देती है   or keyboard काम नहीं करता है \n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans: इस  error को दूर करने के   लिए हम scaflod widget के अंदर "resizeToAvoidBottomInset: false;" प्रॉपर्टी use करने पर  keyboard की प्रॉब्लम दूर हो  जाती  है  और  scrooling की    समस्या के   लिए  singlechildScroolView widget use   करेंगे ',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text: 'Ques:show Error: Incorect use of parent widget\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans: कुछ  widget ऐसे  होते  है  जिनके  parents widget इस्तेमाल  करने पर  error आ  जाती  है ,\n Parent ----> Child\nFlexible---> Row/Column/Flex\nExpanded--->Row/Column/Flex\nPosition--->Stack\nTableCell---> Table',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques: Column में  ListView use krne पर  क्या  होता  है ?\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans: Screen Blank दिखाई  देती है \n ListView को  Expanded विजेट  में  लेने  पर  issue fix हो  जाता  है \n और use Flexible विजेट और  Use shrinkwrap property भी use करने पर प्रॉब्लम resolve  कर सकते है  ',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              // mydivider,
              Container(
                margin: EdgeInsets.only(
                  right: 20,
                  top: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 40,
                      margin: EdgeInsets.all(1),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllQuesList02()));
                          },
                          child: Icon(Icons.navigate_next)),
                    ),
                    Container(
                      height: 30,
                      width: 35,
                      margin: EdgeInsets.all(1),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllQuesList02()));
                          },
                          child: Text('1')),
                    ),
                    Container(
                      height: 30,
                      width: 35,
                      margin: EdgeInsets.all(1),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllQuesList02()));
                          },
                          child: Text('2')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
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
// ignore: todo
// TODO Implement this library.

class AllQuesList02 extends StatelessWidget {
  final mydivider = Divider(
    thickness: 2,
    color: Colors.brown,
    indent: 16,
    endIndent: 16,
  );
  final myQuestext =
      TextStyle(color: Colors.brown, fontSize: 18, fontWeight: FontWeight.bold);
  final myAnstext =
      TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Short Ques with Ans (Page 02)'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Ques05: हमने कोई बूलियन वेरिएबल डिक्लेअर किया हैं उसकी वैल्यू चेंज करनी हैं क्या setState तब भी लिखेगे?\n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Ans:05',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                      text: 'Ques:Flutter  में super.initState() क्या है? \n',
                      style: myQuestext,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Ans:- super.initState() आपके विजेट के State<T> बेस क्लास के डिफ़ॉल्ट implementation के लिए आगे। यदि आप ओवरराइड नहीं करते हैं, तो डिफ़ॉल्ट implementation execute नहीं किया जाएगा, लेकिन विजेट ठीक से काम करने के लिए उस पर निर्भर करता है।',
                          style: myAnstext,
                        ),
                      ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 20,
                  top: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllQuesList()));
                        },
                        child: Text('PREV')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllQuesList02()));
                        },
                        child: Text('NEXT')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
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
// TODO Implement this library.