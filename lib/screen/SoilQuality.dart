import 'package:flutter/material.dart';

import 'Captures.dart';

class SoilQuality extends StatelessWidget {
  const SoilQuality({Key? key,required this.camera}) : super(key: key);
  final camera;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                  title: Text("Soil Quality Check"),
                ),
                body: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome to Virtual lab",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Text("Proceed to check soil"),
                        TextButton(
                            onPressed: () {
                              print("pressed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Captures(camera: camera,)));
                            },
                            child: Icon(Icons.arrow_forward)),
                      ],
                    )))));
  }
}
