import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  var email;
  var pass;
  var img;

  Home(this.email,this.pass,this.img);

  @override
  State<Home> createState() => _HomeState(email,pass,img);
}

class _HomeState extends State<Home> {

  var email;
  var pass;
  var img;

  _HomeState(this.email,this.pass,this.img);

  
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(

          child: Column(
            children: [
              Text(email,style: TextStyle(fontSize: 100),),
              Text(pass),
              Image.network(img,height: 120,),
            
            ]
            
          ),
        ),
      ),
    );
  }
}