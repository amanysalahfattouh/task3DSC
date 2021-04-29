import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
      home:MyApp(),
      debugShowCheckedModeBanner: false,
  )
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  String _image = 'images/Capture1.png';
  Random image = new Random();
  List images = [
    "images/Capture1.png",
    "images/Capture2.png",
    "images/Capture3.png",
    "images/Capture4.png",
    "images/Capture5.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GFG | Dice'),
        backgroundColor: Colors.deepPurple,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              int i = image.nextInt(images.length);
              setState(() {
                _image = images[i];
              });
            },
            child: Image.asset(_image,
              fit: BoxFit.cover,
              height: 400,
              width: 400,
            ),
          )
        ],
      ),
    );
  }
}

