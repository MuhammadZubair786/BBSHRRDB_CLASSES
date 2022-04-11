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
      home:Scaffold(
        appBar:AppBar(
          title:Text("Extra Widgets")
        ),
        body:
        // Container(
        //   color: Colors.red,
        //   width: 600,
        //   height: 100,
        //   child: FittedBox(
        //     child: Text("Hello world"),
        //   ),
        // ),

        // Table(
        //   textBaseline: TextBaseline.ideographic,
        //   textDirection: TextDirection.ltr,
        //   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        //    defaultColumnWidth: FixedColumnWidth(100.0),  
          
        //   border: TableBorder.all(
        //     width: 2,
        //     color: Colors.pink
        //   ),
        //   children: [
        //     TableRow(
        //       children: [
        //         Text("S.NOfnjdnfjndjfn"),
        //         Text("NAME"),
        //         Text("Marks")
        //       ]
        //     ),
        //       TableRow(
        //       children: [
        //         Text("S.NO"),
        //         Text("NAME"),
        //         Text("Marks")
        //       ]
        //     ),
        //       TableRow(
        //       children: [
        //         Text("S.NO"),
        //         Text("NAME"),
        //         Text("Marks")
        //       ]
        //     )
        //   ],
        // )
        // DataTable(
        //   headingRowHeight: 100,
        //   columnSpacing: 150,
        //   dataRowHeight: 100,
        //   dataRowColor:  MaterialStateColor.resolveWith((states) {return Color(0xff424242);},),
        //   headingRowColor:  MaterialStateColor.resolveWith((states) {return Color(0xff222D65);},),
        //   columns: [
        //       DataColumn(label: Text(  
        //             'ID',  
        //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)  
        //         )),  
        //         DataColumn(label: Text(  
        //             'Name',  
        //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)  
        //         )),  
        //   ] , 
        //   rows: [
        //     DataRow(
        //       color:  MaterialStateColor.resolveWith((states) {return Colors.red;},),
              
        //       cells: [
        //         DataCell(
        //           Text("1")
        //         ),
        //          DataCell(
        //         Text("Zubair")
        //         ),
               
        //       ]),
        //        DataRow(
        //       cells: [
        //         DataCell(
        //           Text("1")
        //         ),
        //          DataCell(
        //         Text("Zubair")
        //         ),
               
        //       ]),
        //        DataRow(
        //       cells: [
        //         DataCell(
        //           Text("1")
        //         ),
        //          DataCell(
        //         Text("Zubair")
        //         ),
               
        //       ])
        //       ,
        //        DataRow(
        //       cells: [
        //         DataCell(
        //           Text("1")
        //         ),
        //          DataCell(
        //         Text("Zubair")
        //         ),
               
        //       ])
        //   ],
        //  )
        // Column(
        //   children: [
        //     Container(
        //       height: 20,
        //       child: VerticalDivider(
        //         color: Colors.red,
        //         width: 10,
        //         thickness: 4,
                
        //       ),
        //     ),
        //     Container(
        //       height: 20,
        //       child: Divider(
        //         color: Colors.red,
                
        //         thickness: 4,
                
        //       ),
        //     ),
        //   ],
        // )

        // ElevatedButton(
        //   onPressed: (){
        //     ScaffoldMessenger.of(context).showSnackBar(
        //       SnackBar(
        //         content: Text("Ok"))
        //     );
        //   },
        //   child: Text("Click"),

        // )

        // InkWell(
        //   onTap: (){
        //     print("ok");
        //   },
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.red,
        //   ),
        // )

        // LayoutBuilder(
        //   builder: (context,get){
        //     if(get.maxWidth>600){
        //       return Container(
        //         height: 300,
        //         width: 100,
        //         color: Colors.pink,
        //       );
        //     }
        //     else{
        //        return Container(
        //         height: 200,
        //         width: 100,
        //         color: Colors.red,
        //       );

        //     }

        //   })
        // Container(
        //   child: Placeholder(),
        //   width: 100,
        //   height: 700,
        // )

        // Column(
        //   children: [
        //     Flexible(
        //       flex: 5,
        //       child: Container(
        //         color: Colors.amberAccent,
               
        //       ),
        //       ),
        //        Flexible(
        //       flex: 1,
        //       child: Container(
        //         color: Colors.red,
               
        //       ))
        //   ],
        // )
      //  ClipRRect(
      //    borderRadius: BorderRadius.circular(100),
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.red,
      //       child: Center(
      //         child: Image.network("data:image/jpeg;base64,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")
      //     ),
      //   )
      //  )
        
        // RichText(text: 
        // TextSpan(
        //   text: "User App",
        //   style: TextStyle(color: Colors.black),
        //   children: [
        //     TextSpan(text: " Data",style: TextStyle(color: Colors.pink))
        //    , 
        //    TextSpan(text: " Data 123",style: TextStyle(color: Colors.brown))
         
        //   ]

        // ),
        
        // )
        
        // Wrap(
        //   direction: Axis.vertical,
        //   children : [
        //     Container(
        //       width:200,
        //       height:400,
        //       color:Colors.red
        //     ),
        //      Container(
        //       width:200,
        //       height:400,
        //       color:Colors.pink
        //     ),
        //      Container(
        //       width:200,
        //       height:400,
        //       color:Colors.blue
        //     ),
        //     Container(
        //       width:200,
        //       height:400,
        //       color:Colors.brown
        //     ),
        //     Container(
        //       width:200,
        //       height:400,
        //       color:Colors.blue
        //     )
        //   ]
        // )
      )
    );
  }
}