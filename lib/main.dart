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
  List a = [];
  var hour = DateTime.now().hour;
  var minute = DateTime.now().minute;
  var second = DateTime.now().second;
  var milisecond = DateTime.now().millisecond;

  // void addNewData() {
  //   // a.add("Add New DATA");
  //   // print(a);
  //   if (a.length >= 5) {
  //     print("Not more than Five");
  //   } else {
  //     a.add("Add New DATA");
  //     print(a);
  //   }
  // }

  Widget build(BuildContext context) {
    Future.delayed(Duration(microseconds: 1), () { //flutter time after run
      setState(() {
        hour = DateTime.now().hour;
        minute = DateTime.now().minute;
        second = DateTime.now().second;
        milisecond = DateTime.now().millisecond;
      });
    });
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Class"),
        ),
        body: Column(
          children: [
            Row(
              children: [Text("${hour}:${minute}:${second}:${milisecond}")],
            )
            // SizedBox(
            //   height: 100,
            // ),
            // // ElevatedButton.icon(
            // //     onPressed: () {},
            // //     icon: Icon(Icons.add_location_alt_sharp),
            // //     label: Text(""),
            // //     //  label: Text("")
            // //     style: ButtonStyle(
            // //         foregroundColor: MaterialStateProperty.resolveWith((s) {
            // //       if (s.contains(MaterialState.pressed)) {
            // //         return Colors.pink;
            // //       }
            // //       return Colors.transparent;
            // //     })))

            // // IconButton(
            // //   icon: Icon(Icons.event_busy_sharp),
            // //   onPressed: (){},
            // //   color: Colors.red,
            // //   )

            // // TextButton.icon(onPressed: onPressed, icon: icon, label: label)

            // TextButton(
            //   onPressed: (){},
            //    child: Text("click"),
            // // style: ButtonStyle(
            // // backgroundColor: MaterialStateProperty.resolveWith((s) {
            // //       if (s.contains(MaterialState.focused)) {
            // //         return Colors.pink;
            // //       }
            // //          if (s.contains(MaterialState.selected)) {
            // //         return Colors.brown;
            // //       }
            // //       return Colors.black; //if not same as any condition
            // // }
            // // )
            // // )
            // style: ElevatedButton.styleFrom(
            //   // primary: Colors.red,// background color
            //   // onPrimary: Colors.blue,//font color

            //   side: BorderSide(
            //     width: 2,
            //     color: Colors.red,
            //     style: BorderStyle.solid
            //   ),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(20)
            //   ),
            //   shadowColor: Colors.pink,
            //   elevation: 10

            // ),
            // ),
            // SizedBox(height: 100,),
            // OutlineButton(onPressed: (){},child: Text("Click"),),

            // ElevatedButton(onPressed: addNewData,
            // child: Text("add Data in List"))
          ],
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: (){}, label: Icon(Icons.accessibility_new_rounded)),
        //   floatingActionButtonLocation: FloatingActionButtonLocation.startTop
      ),
    );
  }
}
