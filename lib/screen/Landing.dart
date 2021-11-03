import 'package:flutter/material.dart';
import 'SoilQuality.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.camera}) : super(key: key);
  final camera;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          width: 100,
          height: 50,
        ),
        Image.asset('/lib/assets/first.png'),
        Text(
          "Service Provided",
          style: TextStyle(
              color: Colors.deepPurple[800],
              fontSize: 30,
              fontWeight: FontWeight.w900),
        ),
        Text("Soil Health Check up",
            style: TextStyle(
                color: Colors.deepPurple[800],
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              primary: Colors.amber,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SoilQuality(
                            camera: camera,
                          )));
            },
            child: Text("Press me",
                style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 25,
                    fontWeight: FontWeight.w500))),
        Text("Air Health Check up",
            style: TextStyle(
                color: Colors.deepPurple[800],
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SoilQuality(
                            camera: camera,
                          )));
            },
            child: Text("Press me",
                style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 25,
                    fontWeight: FontWeight.w500))),
        Text("Miscellaneous Health Check up",
            style: TextStyle(
                color: Colors.deepPurple[800],
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SoilQuality(
                            camera: camera,
                          )));
            },
            child: Text("Press me",
                style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 25,
                    fontWeight: FontWeight.w500))),
      ],
    ));
  }
}
