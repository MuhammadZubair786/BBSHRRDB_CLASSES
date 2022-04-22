import 'package:flutter/material.dart';

import 'home.dart';

class About extends StatefulWidget {
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.verified_user),
                  Text("Email : new@gmail.com"),
                  Text("Name : Asad")
                ],
              ),
              color: Colors.red,
            )),
            Container(
              margin: EdgeInsets.only(left: 10),
              // decoration: BoxDecoration(
              //     //  color: Colors.yellow,
              //     // image: DecorationImage(
              //     //     image: NetworkImage(
              //     //         "https://i.pinimg.com/564x/1e/40/ad/1e40ad7965992773da2a396b1d4ccc46.jpg"),
              //     //     fit: BoxFit.cover)),
              height: MediaQuery.of(context).size.height,
              child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(child: Container(child: Text("Home")),onTap: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                  },),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                 GestureDetector(child: Container(child: Text("About")),
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                 },),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("search"),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Profile"),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Text("About"),
    );
  }
}
