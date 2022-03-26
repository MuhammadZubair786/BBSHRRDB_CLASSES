  // ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //Banner
        home: Scaffold(
            //
            backgroundColor: Colors.blue, //background
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/vectors/simple-modern-hotel-building-vector-id1079547122?k=20&m=1079547122&s=612x612&w=0&h=4jBPa36zzye1-sKKfg6hz1c9u1CkLiErCeiI60ZZwn4="),
                  radius: 70,
                )),
                Container(
                  child: Text(
                    "ZABTECH",
                    style: TextStyle(fontFamily: "TStyl2", fontSize: 30),
                  ),
                ),
                Container(
                  child: Text(
                    "Android Course",
                    style: TextStyle(fontFamily: "TStyl2", fontSize: 30),
                  ),
                ),
                Container(
                  width: 400,
                  child: Divider(
                    color: Colors.red,
                    height: 2,
                    thickness: 4,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                
                  decoration: BoxDecoration(
                      color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.yellow,
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("+93543434344343")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                 Container(
                  height: 50,
                
                  decoration: BoxDecoration(
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: 20,
                        spreadRadius: 1
                      )

                    ],
                      color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.yellow,
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("abc@gmail.com")
                    ],
                  ),
                )
              ],
            )));
  }
}
