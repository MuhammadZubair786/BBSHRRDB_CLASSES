
import 'dart:io';

import 'dart:math';

void  main(List<String> args) {
  for(var i=0;i<10;i=i+2){
    // 0 10<10  i=5+5
    // print(i);
    // 0,5 ,10//finite loop
    // 5
    // 4,9
    // 5,5
    // 5
    // 0,5
    // 0,4,9
    // 0,5,4
    // 5,5
    // 0,9,6

  }
  // var List =[1,2,34,56,90,67,55,77,88];
  // // 2,34,56,90,88
  // // 6,5
  // // 0,5
  // for(var i=0;i<List.length;i++){
  //    // 1%2==1
  //   if(List[i]%2!=0){
  //   print(List[i]);
  //   }
  // }
// var a =0;
//   for(;a<10; ){
//     a++;
//     print(a);
//   }
// for(var i=0;i<5;i++){

  // 5
//   // 0      0<5
//   // 1         1<5
//   // 5         5<5
//   for(var j=0;j<5;j++){
  // i=0   j=0 to 4     i=>1,j=5
  // i=1     j=0 to 4    i=>1 ,j=5

  // i=>5
  // j=>25
//     // 0        0<5
//     // 1           1<5
//     // 5             5<5  
//     print("${i},${j}");
//     // 1 ,0
//     // 1 ,1
//     // 1,2
//     // 1,3
//     // 1,4

//   }
//   print("Loop Break");
// }
// List a=[1,2,3];
// List b =["New salary","Old Salary"];
// List c =[];
// for(var i=0;i<a.length;i++){
//   for(var j =0;j<b.length;j++){
//     // a[0]+b[0]
//     // a[0]+b[1]

//     // a[1]+b[0]
//     // a[1]+b[1]
//     c.add(a[i].toString()+b[j]);
    
//    }
// }
// print(c);
// }
// 18
// List arr= [1,2,3,"data",4,true,8];
// num sum =0;
// for(var j=0;j<arr.length;j++){
//   if(arr[j].runtimeType==int){
//   sum += arr[j];
//   }  
 
// }
// print(sum);
int salarysum=0;

// var obj =[
//   {"name":"ali","sal":4000,"Dept":"Hr" },
//   {"name":"Asad","sal":20000,"Dept":"Admin" },
//   {"name":"Omer","sal":5000,"Dept":"It" },
//   {"name":"Saqib","sal":2000,"Dept":"Hr" },
//   {"name":"Ali","sal":30000,"Dept":"adMin" },
// ];



// for(var j=0;j<obj.length;j++){
//   if(obj[j]["Dept"].toString().toLowerCase()=="admin"){
//   print("Name : ${obj[j]["name"]} \t Salary : ${obj[j]["sal"]}");
//   salarysum += int.parse(obj[j]["sal"].toString());
//   }
// }

// print(salarysum);



// list[0][0]=>23
// list[0][1]=>45
// list[0][2]=>67

// List[1][0]=>1
// list[1][1]=>2
// list[1][2]=>3

// List[2][0]=>3




// [
// //  0 
// [
//     23,      0 0
//     45,      0 1
//     67       0 2
//   ],
  
//   // 1 
//   [
//     23,    1 0
//     45,    1 1
//     67,    12
//   ] 
// ]

var List = [
  // 00  01  02
  [23,45,67],
// 10  11  12
  [1,2,3,[5,6,7]],   //0
  // 20 21 22 23  24 25 26
  [3,4,5,6,7,78],//1
  [4,5,6,7],//2
  [23],//3
  ];

  // 0,1,2,3,
  // 4=>length

  // listname[index]

  // i     List [i]
  // 0     List[0]    [1,2,3],
  // 1     list[1]      [3,4,5,6,7,78]
  // 2     List[2]      [4,5,6,7],
  // 3     List[3]       [23]
  // print(List[0][0].values.toList()[0][1]);
  // [
  //   [
  //     []
  //     ]
  //     ]

  //   for(var i=0;i<List.length;i++){  //outer inner
  //     print(List[i].length);
  //     for(var j=0;j<List[i].length;j++){  //inner loop
  //       print("Elemnent Of Row ${i} and Values is :  ${List[i][j]}");

  //     }
    
  // }

// 1
// 12
// 123
// 1234
// 12345
// 123456

// for(var i=1;i<=6;i++){
//   // i=5
//   for(var j=1;j<i;j++){
//     // j=1,2,3,4
//     // i=5
//    stdout.write(j);
//   }
//   print("");
// // 1
// //22
// // 333
// // 4444
// //55555
  

 
// }

// ******
// *    *
// *    *
// *    *  
// *    *
// ******
// ***********
// *            * 
// *             *
// ****************


// for(var i=0;i<=10;i++){
//   // i=10
//   for(var j=0;j<=10;j++){
//     // j=0,10
//     // j=1,2,3,4,5,6,7,8,9=> " "
//     if(i==0 || i==10 || j==0 || j==10){
//     stdout.write("*");
//     }
//     else{
//       stdout.write(" ");
//     }
//   }
//   print("");

// }

// var Day =1;
// switch(Day){
//   case 0:
//   print("Sunday");
//   print("Last");
//   break;
//   case 1:
//   print("Monday");
//   break;
//   case 2:
//   print("Tuesday");
//   break;
// default:
// print("Enter Correct Data ");
// }
// 0 1 2
// 0 to 6
// 0=>
// 1=>20000
// 2=>5000

// 1 to 5=>free
// 5 to 10=>ticket free and lunch not free
// 10 to 20=>not free
var age =Random().nextInt(16);

switch (age){
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  print("Get Everthing free");
  break;
   case 6:
  case 7:
  case 8:
  case 9:
  case 10:
  print(" free ticket");
  break;
   case 11:
  case 12:
  case 13:
  case 14:
  case 15:
  print("not free");
  break;
  default:
  print("No Seat For You");

}



// int a = Random().nextInt(3);
// switch(a){
//   case 0:
//   print("60000");
//   break;
//   case 1:
//   print("70000");
//   break;
//   default:
//   print("Enter Correct Data ");

// }








}






