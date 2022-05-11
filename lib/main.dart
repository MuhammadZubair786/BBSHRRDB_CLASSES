import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:useraddauthapp/SignUp.dart';
// import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final  Future<FirebaseApp> _initialization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot){
       if(snapshot.hasError){
         return Container();
       }
       if(snapshot.connectionState==ConnectionState.done){
         return MaterialApp(
           home: Scaffold(

             body: SafeArea(child: Signup())
           ),
          //  routes: {
          //    "/Home":
          //  },
         );
       }
       return Container();
      } ,

      
    );
  }
}