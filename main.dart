import 'dart:io';

import 'dart:math';


void main() {
//   stdout.write("User Name");
//  var a = stdin.readLineSync();

//  print("Stock \n 1) SHIRT Price=>100 Qtry=> 5 \n 2) SHOE Price=>500 QTy=>3 \n 3) Book Price=>100 Qty=>2");

//    stdout.write("p Name");

//   var  c =stdin.readLineSync();

//   stdout.write("Quantity");
//   int b = int.parse(stdin.readLineSync()!);

//   var p1=100;
//   var p1_qty = 5;

//   var p2=500;
//   var p2_qty = 2;

//   var p3=100;
//   var p3_qty = 3;

//   var price;

//   if(c=="SHIRT"){
//     if(b<=p1_qty){
//       print("You Get This Item");
//        price = b*p1;
//       print("Price: ${price}");
//     }
//     else{
//       print("Out Of stock");
//     }

//   }
//   else  if(c=="SHOE"){
//     if(b<=p2_qty){
//       print("You Get This Item");
//        price = b*p2;
//       print("Price: ${price}");
//     }
//     else{
//       print("Out Of stock");
//     }

//   }
//    else if(c=="BOOK"){
//     if(b<=p3_qty){
//       print("You Get This Item");
//        price = b*p3;
//       print("Price: ${price}");
//     }
//     else{
//       print("Out Of stock");
//     }

//   }
//   else{
//     print("Not Aviable");
//   }

  // stdout.write("Enter Your Age :");
  // int a = int.parse(stdin.readLineSync()!);

  // stdout.write("Enter Reference  If any :");
  // var b1 = stdin.readLineSync()!;

  // if (a > 0 && a <= 15) {
  //   if (b1 == "HR" || b1 == "ADMIN" || b1 == "STAFF") {
  //     print("ticket free lunch free");
  //   } else {
  //     print("Ticket Free");
  //   }
  // } else if (a > 15 && a <= 25) {
  //   if (b1 == "HR" || b1 == "ADMIN" || b1 == "STAFF") {
  //     print("Ticket Free ,lunch Free,Next Movie Ticket Free");
  //   } else {
  //     print("Ticket Free");
  //   }
  // }
  // else {
  //   print("Not Allowed");

  // }

  // if (a > b && a > c) {
  //   print("A is Greater");
  // } else if (b > a && b > c) {
  //   print("B is Greater");
  // } else if (c > a && c > b) {
  //   print("C is Greater");
  // }

// nextbool=>true,false
// nextdouble(0 0r 1)
// nextInt(value) 0 to 9


var a = Random().nextInt(20); 
print(a);



}

// a,b,c
// a=>

// Relation Op(<,>,==,!=,>=,<=)
// logical op(And,or,not)

// user
// Quatity(6)
// Product Name  =>T shirt(3)

// Movie Ticket
// Age 1 to 15 => hr,Admin,Staff=>ticket free lunch free
// Age 1 to 15 => Ticket Free
// Age 15 to 25 => hr,Admin,Staff =>Ticket Free ,lunch Free,Next Movie Ticket Free
// Age 15 to 25=>Ticket Free
// Age 25> Not Allowed
