import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'screen/Landing.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  print(firstCamera);
  runApp(MyApp(
    camera: firstCamera,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.camera}) : super(key: key);
  final camera;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              // Text("$a")
              HomePage(camera: camera,),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Farmer"),
        ),
      ),
    );
  }
}
