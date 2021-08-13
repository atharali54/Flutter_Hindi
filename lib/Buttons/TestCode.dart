import 'package:flutter/material.dart';
import 'package:flutter_hindi/Buttons/ButtonsEx01.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class TestCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: ButtonsEx01(), sourceFilePath: 'lib/Buttons/ButtonsEx01.dart'),
    );
  }
}
