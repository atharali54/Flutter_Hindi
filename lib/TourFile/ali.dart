import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class AliHome extends StatefulWidget {
  @override
  _AliHomeState createState() => _AliHomeState();
}

class _AliHomeState extends State<AliHome> {
  TransformationController controller = TransformationController();

  String velocity = "VELOCITY";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        color: Colors.red,
        child: PhotoView(
          imageProvider: AssetImage("assets/logo.png"),
        ),
      ),
      //Container(
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: Center(
      //           child: InteractiveViewer(
      //             //  panEnabled: true,
      //             constrained: false,
      //             scaleEnabled: false,
      //             maxScale: 100,
      //             minScale: 80,
      //             child: Image.asset('assets/one.png'),
      //             onInteractionStart: (ScaleStartDetails startDetails) {
      //               controller.value = Matrix4.identity();
      //               setState(() {
      //                 // velocity = startDetails.velocity.toString();
      //               });
      //             },
      //             transformationController: controller,
      //             // boundaryMargin: EdgeInsets.all(45.0),
      //             onInteractionEnd: (ScaleEndDetails endDetails) {
      //               print(endDetails);
      //               print(endDetails.velocity);
      //               controller.value = Matrix4.identity();
      //               setState(() {
      //                 velocity = endDetails.velocity.toString();
      //               });
      //             },
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
