import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextKitEx01 extends StatelessWidget {
  final mydivider = Divider(
    thickness: 4,
    color: Colors.green,
    indent: 16,
    endIndent: 16,
  );
  final mytextstyle = TextStyle(
      fontSize: 20.0,
      fontStyle: FontStyle.italic,
      color: Colors.brown,
      fontWeight: FontWeight.bold);
  final scaletext = TextStyle(
      fontSize: 20.0,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Kit'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' (Rotate) ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('NAME: ATHAR ALI', textStyle: scaletext),
              RotateAnimatedText('Mobile: 0123654789', textStyle: scaletext),
              RotateAnimatedText('Address: Kurukshetra India',
                  textStyle: scaletext),
            ],
            onTap: () {},
            isRepeatingAnimation: true,
            totalRepeatCount: 10,
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' (Fade ) ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText(
                'FLUTTER ',
                textStyle: const TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FadeAnimatedText('HINDI TUTORIAL', textStyle: scaletext),
            ],
            onTap: () {},
            isRepeatingAnimation: true,
            totalRepeatCount: 10,
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              '  (Typer ) ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('FLUTTER', textStyle: scaletext),
              TyperAnimatedText('HINDI', textStyle: scaletext),
              TyperAnimatedText('TUTORIAL', textStyle: scaletext),
            ],
            onTap: () {},
            isRepeatingAnimation: true,
            totalRepeatCount: 10,
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              ' (TypeWriter ) ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Discipline is the best tool',
                  textStyle: scaletext),
              TypewriterAnimatedText('Design first, then code',
                  textStyle: scaletext),
              TypewriterAnimatedText('Do not patch bugs out, rewrite them',
                  textStyle: scaletext),
            ],
            onTap: () {},
          ),
          mydivider,
          Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Text(
              '  (Scale   ) ',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              ScaleAnimatedText('Think', textStyle: scaletext),
              ScaleAnimatedText('Build', textStyle: scaletext),
              ScaleAnimatedText('Ship', textStyle: scaletext),
            ],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
