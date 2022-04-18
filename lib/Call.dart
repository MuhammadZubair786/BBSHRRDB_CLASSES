import 'package:flutter/material.dart';
class calls extends StatefulWidget {
 

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context,ind){
        return ListTile(
          leading: Icon(Icons.verified_user),
          title: Text("Asad"),
        
          trailing: Icon(Icons.call),
        );
      });
  }
}