// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp()); //Predefine Function
}

class FirstApp extends StatelessWidget {
  const FirstApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ok"),
        ),
        body: Container(
          child: Text("Conatiner"),
        ),
      ),
    );
  }
}
