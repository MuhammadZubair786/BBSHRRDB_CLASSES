import 'package:flutter/material.dart';
import "Home.dart";
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  var tab =[
    Home(),
    Text("ok"),
    Text("Bottom")
  ];

  var _selectedIndex=0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        bottomNavigationBar: MoltenBottomNavigationBar(
          barColor: Colors.black,
      selectedIndex: _selectedIndex,
      onTabChange: (clickedIndex) {
        setState(() {
          _selectedIndex = clickedIndex;
        });
      },
      tabs: [
        MoltenTab(
          icon: Icon(Icons.search),
        ),
        MoltenTab(
          icon: Icon(Icons.home),
        ),
        MoltenTab(
          icon: Icon(Icons.person),
        ),
      ],
   ),

        body:tab[_selectedIndex]
      )      
    );
  }
}