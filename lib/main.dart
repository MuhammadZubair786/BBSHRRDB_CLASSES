// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "App 1",
              style: TextStyle(
                //  backgroundColor: Colors.pink
                color: Colors.pink,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Text("First"),
            backgroundColor: Colors.yellow,
            elevation: 50,
          ),
          body: Icon(
            Icons.phone_bluetooth_speaker_sharp,
            size: 400,
            color: Colors.red,
          )
          //  Image(
          //   image: AssetImage("assets/images.png"),
          //   width: 400,
          //   height: 1000,
          // )
          ),
    )
    );
  }
}
