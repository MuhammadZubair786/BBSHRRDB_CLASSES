import 'package:flutter/material.dart';
import 'package:guibasic/Call.dart';
import 'package:guibasic/Chats.dart';

class TabHome extends StatefulWidget {
 

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          centerTitle: true,
          bottom: TabBar(
            
            tabs: [
              Text("chats"),
              Text("Status"),
              Text("call")

            ],
          ),
        ),
        body: TabBarView(
          children: [
          Chats(),
            Text("STtua"),
          calls()
          ],
        ),
     
      )
      );
  }
}