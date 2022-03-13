
import 'dart:io';
import 'dart:math';

void main() {
  // var i=0;   //inilzation  variable
  // while(i<10){
  //    //while(condition)
  //   print(i); //statment
  //    i++;// post inc
  // }

  //  var i="y";
  //  while(i=="y"){
  //   //  0 to 9
  //    print(Random().nextInt(10));
  //    print("Enter Y or N");
  //    i = stdin.readLineSync()!;

  //    if(i!="y"){

  //      print("You Want To break Loop");
  //    }
  //  }

  // List DataList = ["asad", "omer"];

  // 1) add New Element
  // 2)search Element
  // 3) delete element
  // 4) Show All List

  // var i = "Y";
  // while (i == "y" || i == "Y") {
  //   print(
  //       "1) add New Element\n 2)search Element\n3) delete element\n 4)Show All List");
  //   stdout.write("Enter Any Option");
  //   var a = int.parse(stdin.readLineSync()!);
  //   switch (a) {
  //     case 1:
  //       stdout.write("Enter Any Value For Add");
  //       var ele = stdin.readLineSync()!;
  //       DataList.add(ele);
  //       print(DataList);
  //       break;

  //     case 2:
  //       stdout.write("Enter Value For Search");
  //       var b = stdin.readLineSync()!;//asad
  //       var chkeck = 0; 
  //       for (var a = 0; a < DataList.length; a++) {

         
  //         if (DataList[a] == b) {
  //          chkeck = 1;
  //           //  print("Value Is Present");
  //         }
  //       }
  //       print(chkeck);
  //       if (chkeck == 1) {
  //         print("Value Is Present");
  //       } else {
  //         print("Value Is Not  Present");
  //       }
  //       break;
        
  //       case 3:
  //        stdout.write("Enter Index For Delete Data");
  //       var b =int.parse( stdin.readLineSync()!);
  //       DataList.removeAt(b);
  //       print(DataList);
  //       break;

  //       case 4:
  //       print("Show All element");
  //       print(DataList);

  //       break;

  //       default:
  //       print("Enter Correct Option");
  //   }
  //   print("Enter Y if You Continue Programm");
  //   i=stdin.readLineSync()!;

  // }

  // var a = "Y";
  // while(a=="y" || a=="Y"){
  //   var rnd = Random().nextInt(100);
  //   print(rnd);
  //   stdout.write("Enter Value");
  //   var mat = int.parse(stdin.readLineSync()!);

  //   if(rnd==mat){
  //     print("Random And User Number Equal");
  //     a="N";
  //   }
  //   else{
  //     print("Not Equal");
  //   }

  // }

  // List  a=[23,56,12,45,34,56,78];
  // // a.sort();
  // // print(a);
  // for(var i=0;i<a.length;i++){
  //   for(var j=0;j<i;j++){
  //     if(a[i]<a[j]){
  //       var temp = a[i];
  //       a[i]= a[j];
  //       a[j]= temp;
  //     }
  //      print(a);
  //   }
  // }

var i=0;
  do{
    print(i);
    i++;
  }
  while(i<10);
 
  
}







