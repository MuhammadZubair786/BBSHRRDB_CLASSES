import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text("Profile"),
      
    );
  }
}