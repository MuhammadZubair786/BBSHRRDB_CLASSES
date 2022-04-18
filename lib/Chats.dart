import 'package:flutter/material.dart';

class Chats extends StatefulWidget {


  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override

  var username =["Asad","ali","omer"];
  var latmessage=["Ma kam nhi karo gya","Aya rha hoo","team nhi aya gei "];
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: username.length,
      itemBuilder:(context,ind){
        return ListTile(
          leading: Icon(Icons.verified_user),
          title: Text(username[ind]),
          subtitle: Text(latmessage[ind]),
          trailing: Icon(Icons.done_all),
        );
      });
  }
}