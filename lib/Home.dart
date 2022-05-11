import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  var uid;
  var email;
  Home(this.uid,this.email);

  @override
  State<Home> createState() => _HomeState(uid,email);
}

class _HomeState extends State<Home> {
  var uid;
  var email;
  _HomeState(this.uid,this.email);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("User Page"),
      
    );
  }
}