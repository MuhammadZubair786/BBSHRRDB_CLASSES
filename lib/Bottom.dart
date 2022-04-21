import 'package:bottomnav/Chat.dart';
import 'package:bottomnav/Home.dart';
import 'package:bottomnav/Profile.dart';
import 'package:bottomnav/Search.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override

  var indx = 0;

  List tab =[
  Home(),
  Chats(),
  Search(),
  Profile()

  ];




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav"),
        centerTitle: true,
        backgroundColor: Colors.pink,

      ),
      body: tab[indx],
        
        

    bottomNavigationBar:  BottomNavigationBar(
      currentIndex: indx,
      selectedItemColor: Colors.white,
      // selectedFontSize: 30,
      // unselectedFontSize: 20,
      // unselectedItemColor: Colors.blue,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,),
          // title: Text("Home")
          label: "Home",
          backgroundColor: Color(0xff921916) 
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.settings_applications_rounded,),
          // title: Text("Home")
          label: "Chats",
          backgroundColor: Colors.orange
          ),
            BottomNavigationBarItem(
          icon: Icon(Icons.search,),
          // title: Text("Home")
          label: "Search",
          backgroundColor: Colors.red 
          ),
            BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined,),
          // title: Text("Home")
          label: "Profile",
          backgroundColor: Color(0XFF7E2E1D )
          ),
          

      ],
      onTap: (ind){
        print(ind);
        setState(() {
                  indx=ind;
                });
      },
      
   ),
    );
  }
}
