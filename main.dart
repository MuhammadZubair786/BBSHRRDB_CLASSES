void main(){
  // var data = {1,34,67,23,100};      // {1,34,67,23,100,56//,109}

  // var data1= {34,56,23,109};
  // data.forEach((element) {
  //   print("data : ${element}");
  // });

  // data.addAll({12,23,3});

  // print(data);

  // print(data.elementAt(0));
// print(data.difference(data1));//set1 remove element which same as set 2=>return not same

// print(data.intersection(data1));//get common from both set

// print(data.union(data1)) ;
List a =[1,2,3,4,5];
var b = a.fold(5, (previous, element) => 
  element + previous);



// precious=>15
// element=5
// 15+5=>20


print(b);
}
