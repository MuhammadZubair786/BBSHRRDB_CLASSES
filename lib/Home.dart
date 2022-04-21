import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text("Home"),
      
    );
  }
}