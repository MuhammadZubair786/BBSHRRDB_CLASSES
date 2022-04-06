import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("BASIC GUI"),),
        body: Card(
          margin: EdgeInsets.all(20),
          
          elevation: 10,
          shadowColor: Colors.blue,
          // shape: Border(
          //   left: BorderSide(
          //     width: 2,
          //     color: Colors.pink,
          //     style: BorderStyle.solid
          //   ),
          //   right:  BorderSide(
          //     width: 2,
          //     color: Colors.pink,
          //     style: BorderStyle.solid
          //   ),
          //   bottom: BorderSide(
          //     width: 5,
          //     color: Colors.blue,
          //     style: BorderStyle.solid
          //   ) ,
          //   top: BorderSide(
          //     width: 5,
          //     color: Colors.blue,
          //     style: BorderStyle.solid
          //   )
          // ),
          shape: RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(20),//SET RADIUS ALL SIDE
            borderRadius: BorderRadius.only( //use for set radius speific sides
              bottomRight: Radius.circular(60),
              // bottomLeft: Radius.circular(60),
              topLeft: Radius.circular(60)
            ),
            side: BorderSide(
               width: 1,
              color: Colors.blue,
              style: BorderStyle.solid
            )
            
          ),
          child: Container(
            padding: EdgeInsets.all( 20),
            width: 400,
            height: 400,
            child:Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.pink,
                      width: 2
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(30)
                    )
                  ),
                  child: Image.network("data:image/jpeg;base64,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")),
                Text("Price: 4000",style: TextStyle(
                  fontFamily: "DATA1",
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink
                ),),
                Text("ABC NEW DISH",style: TextStyle(
                  fontFamily: "DATA1",
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink
                ),),
                Text("Discount : 20%",style: TextStyle(
                  fontFamily: "newSTYLE",
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink
                ),)
              ],
            )
          ),
        ),
      ),
    );
  }
}