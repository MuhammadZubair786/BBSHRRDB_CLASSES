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

// String a2 = stdin.readLineSync()!; 

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

// var a =int.parse(stdin.readLineSync()!);
// var b = int.parse(stdin.readLineSync()!);
// var c = a % b;
// print(a);
// print(a.runtimeType);
// print(c);
// print("Hello");

// operator

// (+,-,%,/,~/)=>arithmetic operator
// equatitly and rational operator(<,>,<=,>=,==,!=)
// logical opeator(3)

// And => 2 conditions(check condition ) (both conidtion true)=>true , otherwise=>false
// or=>2 condition(true)=> true=>(if true any one then get result true) 
// Not => true=>false    false=>true

// !(4 >  5) false =>true 

// 13>5 and 10>12  =>false     
// opearnd(varaible or value) and opeator

// var a = int.parse(stdin.readLineSync()!);
// int b = 12;
// bool c= a == b;   

// graeter>small
// small <greater
// 45>12;  true
// 45<12;false
// 45==12;  false
// 45!=12 ; true
// 45 <=12; false
// 12 >= 12;  true
// print(c); 
// 3 input user 
// 1 check 2,3 
// 2 check 3
// 3 check 1

// a>b    a>c


// less than or equal<=
// greater  than or equal to

// print(c);
// int a = int.parse(stdin.readLineSync()!);
// int b = int.parse(stdin.readLineSync()!);
// int c= int.parse(stdin.readLineSync()!);

// bool  a1= a<b;
// bool a2 = b == c;
// bool a3 = c>a;

// print("1 CHECK WITH 2 (A LeSS THAN B) ${a1}");
// print("2 CHECK WITH 3 (B equal THAN c) ${a2}");
// print("3 CHECK WITH 1 (c Greater THAN A) ${a3}");


// int a =int.parse(stdin.readLineSync()!);   //4
// int b = int.parse(stdin.readLineSync()!);  //7
// int c = int.parse(stdin.readLineSync()!);   //3

// bool  d = a<b && a<c;
// bool  e =a<b || a<c;
          // 12 < 3 || 12< 34
          // false   ||  true
          // true

          // 4 <7 && 4<3;
          // true && false;
          // false;

// or=>when both condition false(false)
// and=>when get true when both conidtion 
// Or table(||)

// A <B       A<C           A||b           A&&B
// true     false=>     true           false
// false     true  =>  true             false
// true        true=>  true            true
// false  false   =>    false           false




           // 4 <2 || 4<3;
          // false || false;
          // true;
          //false

          // Not Table 
          // A    B    !(A<B)
          // 12    5    !(12<5)   !(true)==>false
          

bool a =  !(10>13 && 14<2) ;
print(a);


}