import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class CodeViewEx02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CodeView Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text('CodeView Example'),
            ),
          ],
        ),
      ),
    );
  }
}

class CodeView02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: CodeViewEx02(),
      sourceFilePath: 'lib/CodeView/CodeViewEx02.dart',
    );
  }
}
