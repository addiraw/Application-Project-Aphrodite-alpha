import 'package:camera/camera.dart';
import 'package:farmer_app/screen/capture.dart';
import 'package:flutter/material.dart';
import 'package:farmer_app/main.dart';
import 'dart:async';
import 'dart:io';


class Captures extends StatefulWidget {
  const Captures({Key? key,required this.camera}) : super(key: key);
  // final camera;
  final CameraDescription camera;
  @override
  State<Captures> createState() => _CapturesState();
}

class _CapturesState extends State<Captures> {
  @override
  void initState() {
    // cameraInitials().then((value) => print("camera initialize"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: TakePictureScreen(
        camera: widget.camera,
      ),
    );
  }
}

// Future<void> cameraInitials() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final cameras = await availableCameras();
//   firstCamera = cameras.first;
//   print(firstCamera);
// }
