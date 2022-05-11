import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:useraddauthapp/Signin.dart';
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
   DatabaseReference db = FirebaseDatabase.instance.reference().child("User_Reg");
 
  var useremail = email.text;
  var userpassword = password.text;

  print(useremail);
  print(userpassword); 
try{
  UserCredential  user = await  auth.createUserWithEmailAndPassword(email: useremail, password: userpassword);
  print(user.user.uid);

  var obj = {
    "email":useremail,
    "password":userpassword,
    "name":"ZABTECH",
    "uid":user.user.uid
  };

  // await db.push().set(obj); //craete using id


  await db.child(user.user.uid).set(obj); 
  
   Widget okButton = TextButton(child: Text("OK"), onPressed:(){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
   });
   
      //when add new user data 
  AlertDialog alert = AlertDialog(
          title: Center(child: Text("user Account Craeted ")),
          content: Text("Click Ok Button & Plz Wait"),
          actions: [
            okButton,
          ],
        );

        return showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );


  
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