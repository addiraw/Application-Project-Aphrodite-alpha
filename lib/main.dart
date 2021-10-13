import 'package:camera/camera.dart';
import 'package:farmer_app/screen/SoilQuality.dart';
import 'package:flutter/material.dart';

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


  const MyApp({Key? key,
  required this.camera}) : super(key: key);
  final  camera;
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

class HomePage extends StatelessWidget {
  const HomePage({Key? key,required this.camera} ) : super(key: key);
  final camera;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("Second Page"),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SoilQuality(camera: camera,)));
            },
            child: Text("Press me"))
      ],
    ));
  }
}
