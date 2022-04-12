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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child:
          DataTable(
            headingRowColor:  MaterialStateColor.resolveWith((states) {return Colors.red;},),
            headingRowHeight: 100,
            columnSpacing: 30,
            dataRowHeight: 120,
             columns: [
               
              DataColumn(
                label: Text("S.NO"),
                ),
                 DataColumn(
                label: Text("Name")),
                 DataColumn(
                label: Text("Marks")),
            ],
            rows: [
              newMakeRow(),
                newSecondRow(),
                 newMakeRow(),
                 newSecondRow(),
            ]
           
             )
          
          
          //  Table(
          //   textDirection: TextDirection.ltr,
          //   defaultColumnWidth: FixedColumnWidth(80),
          //   defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          //   border: TableBorder.all(
          //     color: Colors.red,
          //     width: 1,
          //   ),
          //   children: [
          //   newdata1("Sno","Name","marks"), 
          //      newdata("1","ali","45",), 
          //  newdata("2","ali","56"), 
          //   newdata("3","ali","22"), 
          //    newdata("4","ali","67"), 
          
            
          //   ],
          // ),
        ),
      ),
    );
  }

  DataRow newSecondRow() {
    return DataRow(cells: [
              DataCell(
                Text("1")
              ),
                DataCell(
                Text("1")
              ),
                DataCell(
                Text("1")
              ),

             
            ]);
  }

  DataRow newMakeRow() {
    return DataRow(
              color:  MaterialStateColor.resolveWith((states) {return Colors.grey;},),
              cells: [
              DataCell(
                Text("1")
              ),
                DataCell(
                Text("1")
              ),
                DataCell(
                Text("1")
              ),

             
            ]);
  }

//   TableRow newdata(String d1,String d2,String d3) => TableRow(children: [
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text(d1),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text(d2),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text(d3),
//         ),
//         int.parse(d3.toString())>=50 ?    Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text("Pass",style: TextStyle(color: Colors.green,fontSize: 20),),
//         )
//         :
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text("Fail",style: TextStyle(color: Colors.red,fontSize: 20),),
//         )

     

//       ]);

// //first row
//        TableRow newdata1(String d1,String d2,String d3) => TableRow(children: [
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text(d1),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text(d2),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text(d3),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Text("Pass/fail"),
//         ),
     

//       ]);
      
      // First Row
      
}

