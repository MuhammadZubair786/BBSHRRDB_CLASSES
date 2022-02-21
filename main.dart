void main(){
         // 0 1  2 3
  List arr = [1,2,3,4,56,78,"98"] ; //make any list(declare)
  print(arr[3]);
  print("Length  :${arr.length}");
  print("Last ${arr.last}");
  print("First ${arr.first}");
    print("Type Get First :${arr[0].runtimeType}");
  print("Type Get First : ${arr.last.runtimeType}");
  print("Element "+arr[4].toString());
  // print(arr[4].runtimeType);
  print("Element : ${arr}");

  // Update Value
  arr[6]="Zebtech";
  print(arr);

  // add new value(add only one value)=>last(get only one index)
  // arr.add(1);
  arr.add("asad");
  // arr.add([1,3,8,7,9,50,67,9,89,89,78]);
  // 3,8
  // Binary Search
  // print(arr[8][2]);
  // print((0+arr[8].length)/2);
  // if(arr[8].length%2==0){
// var beg= 0;  
// var end = arr[8].length; //11
// var res = (beg+end)~/2; //4

// print(res);

// if(res%2==0){  //even
  
//   print("data  ${arr[8][res]} ${arr[8][res+1]}");
  
// }
// else{
//   print("daat; ${arr[8][res]}");
// }


// print(res);
// print(beg);
// print(end);
// print(arr);
// var arr1 = arr;
// arr.insert(3, ["element","omer"]);
// // arr[3][0]
// print(arr[3]);
// arr.insertAll(3,["Asad","omer"]);
// print(arr[3]);
// // arr[4]
// print(arr);


// var a = "dart course";
// var b = a.indexOf(" ");
// var res = a[0].toUpperCase()+a.substring(1,b+1).toLowerCase()+a[b+1].toUpperCase()+a.substring(b+2).toLowerCase();
// print(res);


var a = 2, b = 1;
var result = --a - --b + ++b + b--;
//--a =1
// --a - --b   =1 - 0 =1
print(result);


// }
  // if(arr[8].length)

}