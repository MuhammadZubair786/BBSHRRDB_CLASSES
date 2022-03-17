void main(){
//call any class
  Center b = new  Center(); //constructor
  hello(); //call function

  b.hello();  //call method  

   print(b.course); 


  b.course=23; //change  property value using constructor
  
  print(b.course);

 //property


}    

class Center{ //define any class

int course =5; //instance property


void hello(){  //method
  print("Hello classes Method" );

}
  
}

void hello(){  //Function
  print("Hello classes Function");

}