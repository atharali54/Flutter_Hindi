import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldEx01 extends StatelessWidget {
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
        title: Text(' Example'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Ex-01- Not Allow Space',
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            TextField(
              maxLength: 8,
              inputFormatters: [
                FilteringTextInputFormatter.deny(
                  RegExp(r"\s"),
                ),
              ],
            ),
            //----------------
            SizedBox(height: 10),
            Text(
              'Ex 02- Allow only Name & Space',
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
              ],
            ),

            SizedBox(height: 10),
            Text(
              ' Ex 03-  Allow numbers with only two digit',
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"^\d+\.?\d{0,2}")),
              ],
            ),
            SizedBox(height: 10),
            Text(
              ' Ex 04-  Digit Only',
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            Text(
              ' Ex 05- Allow (A-Z,0-9, Space) ',
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            TextField(inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp("[a-z A-Z á-ú Á-Ú 0-9]"))
            ]),

            //mydivider,
          ],
        ),
      ),
    );
  }
}
