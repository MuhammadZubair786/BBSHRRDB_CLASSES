void main(){

  List a1 =[2000,1400,900,0,1000];
  print(a1[0]); //2000
  print(a1[4]);//1000
  print(a1[1]);//1400

  // update data 
  a1[0]=20000;
  print(a1[0]);

  //add new value
  // a1[5]=100000; erro
  // print(a1);

  // .add Method =>add in last
  a1.add(10000);
  // print(a1);

 a1.sort(); //return nothing
print(a1.reversed);
print(a1);


  
}