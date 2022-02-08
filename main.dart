//package use for getining input from user

import 'dart:io';

void main(){
 
  // print("Enter User Name :");
//   stdout.write("Enter User Name :   ");
//  var  a = stdin.readLineSync(); //method name =>camelcase=>(string)
//   print("User Input : ${a}");
//   print("Type Of Getting input from user :  ${a.runtimeType}");


  // num a  = stdin.readByteSync(); //read Byte in form of ascii code BUT ONLY FIRST CAHARCTER
  // print(a);

  // 12.0 12

//  num a = int.parse(stdin.readLineSync()!);  //! null saftey
//   print(a);
//   print(a.runtimeType); 

// int? a = int.tryParse(stdin.readLineSync()!);
// print(a);

String a2 = stdin.readLineSync()!; 

// readLineSync() //Input user
// readByteSync()//return first ch ascii code

// password : must enter one cap letter
// ones small
// ADSDSDsfdfdsfdf  //65 to 90=>capital letter
// 97 to 122  //small enter  

// A =>  65
// Baber =>66
// Asad =>65 Asad

// int a1 = int.parse(stdin.readLineSync()!);
// int a2 = int.parse(stdin.readLineSync()!);
// print("Sum Of ${a1} and ${a2} is : ${a1+a2} ");
// var user = stdin.readLineSync();
// print(user);



}