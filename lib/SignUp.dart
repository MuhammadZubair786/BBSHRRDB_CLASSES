import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:image_picker/image_picker.dart';
import 'package:useraddauthapp/Signin.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import 'Home.dart';
import 'package:path/path.dart' as path;


class Signup extends StatefulWidget {
  
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  var imagepath;


  ImagePick() async{

    // Pick image from mobile and store path
    
    final ImagePicker _pick=ImagePicker();
    final image = await _pick.getImage(source: ImageSource.gallery);

    print(image.path);

    setState(() {
      imagepath=image.path;
          
        });

  }

  


 Signup()async {
  //  print(imagepath);
   String imageName = path.basename(imagepath);
   print(imageName);

   firebase_storage.Reference ref =
           firebase_storage.FirebaseStorage.instance.ref('student/${imageName}');

       File file = File(imagepath);



        await ref.putFile(file);

        String downlaodURL = await ref.getDownloadURL();

        print(downlaodURL);





   FirebaseAuth auth = FirebaseAuth.instance; //use for make instance of auth
   DatabaseReference db = FirebaseDatabase.instance.reference().child("User_Reg");
 final  cd = FirebaseFirestore.instance.collection("User_Data");


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
    "uid":user.user.uid,
    "Imagepath": downlaodURL
  };


// await cd.add(obj);
await cd.doc(user.user.uid).set(obj);

  // await db.push().set(obj); //craete using id


  // await db.child(user.user.uid).set(obj); 
  
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
        ElevatedButton(onPressed: Signup, child: Text("Sign up")),
        ElevatedButton(onPressed:  ImagePick, child: Text("Image Pick "))
       
      ],
      
    );
  }
}