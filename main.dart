import 'dart:io';

void main(){

// print(square(4)); //16
// var b = square(3); //call function
// print(square(5));
// var c = cube(b); //cube(9)=>9*9(9=>)81*9=>729
// print(c);
stdout.write("Enter First Name");
var b = stdin.readLineSync()!;
stdout.write("Enter Second Name");
var c = stdin.readLineSync()!;
var d = validate(b,c);
print("result ${d}");
}

validate(a1,b1){
  if(a1.toString().length==0 || b1.toString().length==0){
    print("Enter All data");
    return "Enter All data" ;
     
  }
  else if(a1.toString().length!=0 || b1.toString().length!=0){
   return  datasave(a1, b1);
  }

}

datasave(fn,ln){
  
 return "${fn},${ln}";
}

// square(){ //define

//   //  var a = 5;
//   //  var b =10;
//   //  var d = (a+b)/a-b;
//   //  return d;

// }

// cube(a){
//   return a*a*a;

// }
