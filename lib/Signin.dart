import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'Home.dart';


class Signin extends StatefulWidget {
  
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


 Signup()async {

   FirebaseAuth auth = FirebaseAuth.instance; //use for make instance of auth
   DatabaseReference db = FirebaseDatabase.instance.reference().child("User_Reg");
 
  var useremail = email.text;
  var userpassword = password.text;

  print(useremail);
  print(userpassword); 
try{
  // UserCredential  user = await  auth.createUserWithEmailAndPassword(email: useremail, password: userpassword);
  // print(user.user.uid);

   UserCredential  user = await  auth.signInWithEmailAndPassword(email: useremail, password: userpassword);

  print(user.user.uid);

  // db.child(user.user.uid).once().then((value) => {
  //   print(value)
  // });
  db.child(user.user.uid).once().then((DataSnapshot snapshot) => {
    print(snapshot.value)

  });




 
  


  
}

catch(e){
  print(e);
  print("Already Account ");
  // ScaffoldMessenger(child: child)
}
  

  // print(user.user.uid);
 

 
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Column(
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
          ElevatedButton(onPressed: Signup, child: Text("Sign In"))
         
        ],
        
      ),
      )  );
  }
}