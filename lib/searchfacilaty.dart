import 'package:flutter/material.dart';
//import 'package:flutter_application_1/videoplayer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SecDropDownList extends StatefulWidget {
  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<SecDropDownList> {
  String selectmonths = "Animal";

  final List<String> monthlist = [
    'ABC Alphabets',
    'Animal',
    'At the doctor',
    'Cloths',
    'Computer',
    'Studies',
  ];

  //final _formKey = GlobalKey<FormState>();
  // String dropdownValue1 = 'FlareGiffyDialog';

  String dropdownValue = 'Animal';
  String dropdownValue1 = 'https://www.youtube.com/watch?v=uz4xRnE-UIw';
  // String dropdownValue1 = 'Cloths';
  // String dropdownValue2 = 'Computer';
  // String dropdownValue3 = 'Studies';

  List imgurl = [
    "assets/mangoimg.png",
    "assets/imgone.jpg",
    "assets/bannerimg.jpg",
    "assets/imgone.jpg",
    "assets/bannerimg.jpg",
    "assets/imgone.jpg",
    "assets/bannerimg.jpg",
    "assets/imgone.jpg",
  ];

  List videoList = [
    'dSBRQUebo7g',
    'N0lUBVYl1hI',
    'dSBRQUebo7g',
    'N0lUBVYl1hI',
    'dSBRQUebo7g',
    'N0lUBVYl1hI',
  ];

  int vList = 0;

  List<String> list = [
    'ABC Alphabets',
    'Animal',
    'At the doctor',
    'Cloths',
    'Computer',
    'Studies',
  ];

  Column children;
  bool widgetVisible = true;

  static String videoID = 'dFKhWe2bBkM';

  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 2,
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
                    border: const OutlineInputBorder(),
                  ),
                  hint: Text("Select Months"),
                  value: selectmonths,
                  onChanged: (monthvalue) {
                    setState(() {
                      selectmonths = monthvalue;
                    });
                  },
                  items: monthlist
                      .map((monthvalue) => DropdownMenuItem(
                            child: Text(monthvalue),
                            value: monthvalue,
                          ))
                      .toList(),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Search",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Container(
                  height: 80,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    underline: Container(),
                    // icon: Icon(Icons.arrow_downward),
                    iconSize: 20.0, // can be changed, default: 24.0
                    iconEnabledColor: Colors.red,
                    onChanged: (newValue) {
                      setState(() {
                        vList = list.indexOf(newValue);

                        widgetVisible = true;
                        dropdownValue = newValue.toString();
                      });
                    },

                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: widgetVisible,
                child: SizedBox(
                  // width: 250,
                  child: myanimatedTexts(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column myanimatedTexts() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("$dropdownValue"),
                ),
              ],
            ),
          ],
        ),

        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset(
                imgurl[vList],
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: videoID[vList],
                  flags: YoutubePlayerFlags(
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                liveUIColor: Colors.amber,
                showVideoProgressIndicator: true,
              ),
            )

            // VideoDemo(url: videoList[0].toString())
          ],
        ),

        //Text("new text")
      ],
    );
  }
}
// class MyStatefulWidget extends StatefulWidget {
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   final _formKey = GlobalKey<FormState>();
//   String dropdownValue = 'One';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: DropdownButton<String>(
//           value: dropdownValue,
//           icon: const Icon(Icons.arrow_downward),
//           iconSize: 24,
//           elevation: 16,
//           style: const TextStyle(color: Colors.deepPurple),
//           underline: Container(
//             height: 2,
//             color: Colors.deepPurpleAccent,
//           ),
//           onChanged: (String newValue) {
//             setState(() {
//               dropdownValue = newValue;
//             });
//           },
//           items: <String>['One', 'Two', 'Free', 'Four']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
