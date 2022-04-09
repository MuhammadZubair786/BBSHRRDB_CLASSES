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

  // var a =["Asad","omer","Ali","ali","zebtech","smit"];
  // var price =[100,200,300,400];
  // var dishname=["Abc","bdc","bbc","Data"];
  // var img =["1.jfif","2.PNG","3.jpg","4.png"];
  var data =[
    {
      "name":"Abc",
      "price":300,
      "img":"1.jfif",
      "color":Colors.red
    },
      {
      "name":"DEF",
      "price":400,
      "img":"2.PNG"
    }
  ];

  // data[1]["price"]

// a[2]
 
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Text("App"),
          // ListView(
          //   physics: NeverScrollableScrollPhysics(), //scroll bar  remove
          //   shrinkWrap: true, //is ka sat kis aur ko ayna to
          //   children: [
          //     // BuildData(d1: "1", e1: Colors.red),
          //     // SizedBox(
          //     //   height: 20,
          //     // ),
          //     // BuildNewData("2"),
          //   ],
          // )
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context,ind){
              return Card(
                color: data[ind]["color"],
                child: Column(
                  children: [
                    Text("${data[ind]["name"]}"),
                    Image.asset("${data[ind]["img"]}"),
                    Text("Price : ${data[ind]["price"]}")
                    
                  ],
                ),

              );
            },
          )
         
        ],
      ),
    )));
  }

//   Container BuildNewData(s1) {
//     return Container(
//       color: Colors.yellow,
//       width: 100,
//       height: 100,
//       child: Text("Data ${s1}"),
//     );
//   } 

//   Container BuildData({d1, Color e1 = Colors.red}) {
//     return Container(
//       color: e1,
//       width: 100,
//       height: 100,
//       child: Text("Data ${d1}"),
//     );
//   }
// }
}