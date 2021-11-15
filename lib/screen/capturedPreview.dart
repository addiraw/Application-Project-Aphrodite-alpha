import 'dart:io';
import 'package:flutter/material.dart';

class PreviewPan extends StatelessWidget {
  final String imagePath;
  const PreviewPan({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: [
              Text('df'),
              SizedBox(
                height: 30,
              ),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(color: Colors.amberAccent),
                child: Image.file(File(imagePath)),
              ),
              TextButton(
                  // style: ,
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width: 5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'Send',
                      style: TextStyle(
                          fontFamily: 'sans-serif',
                          fontSize: 50,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(113, 23, 34, 34)),
                      textDirection: TextDirection.ltr,
                    ),
                  )),
              IconButton(
                  onPressed: () {
                    print(imagePath);
                  },
                  icon: Icon(Icons.ac_unit_rounded))
            ],
          ),
        ),
      ),
    );
  }
}
