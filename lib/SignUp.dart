import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Home.dart';


class Signup extends StatefulWidget {
  
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


 Signup()async {

   FirebaseAuth auth = FirebaseAuth.instance; //use for make instance of auth
  var useremail = email.text;
  var userpassword = password.text;

  print(useremail);
  print(userpassword); 
try{
  UserCredential  user = await  auth.createUserWithEmailAndPassword(email: useremail, password: userpassword);
  print(user);
}

catch(e){
  print("Already Account ");
  // ScaffoldMessenger(child: child)
}
  

  // print(user.user.uid);
 

 
}


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Email"),
            Container(
              width: 200,
              child: TextField(
                controller: email,
              ))
          ],
        ),
        SizedBox(height: 30,),
          Row(
          children: [
            Text("Password"),
            Container(
              width: 200,
              child: TextField(
                controller: password,
              ))
          ],
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: Signup, child: Text("Sign up"))
       
      ],
      
    );
  }
}