import 'package:flutter/material.dart';

import 'Forms/Forms1.dart';

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
        body: FormsClass(),
      ),
    );
  }
}

