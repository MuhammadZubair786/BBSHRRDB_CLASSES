void main(){

  Car a = new Car(newdaat:  45,wheel :40);
  a.hellouser();

  Car b = new Car(wheel : 6);
  b.hellouser();

}

class Car{

  Car ( { int?  wheel , int? newdaat } ) { 
    this.wheel=wheel;
    this.data2 = newdaat;
  }


  int? wheel; //accept=>null
  int? data2;

 void hellouser(){
   print(wheel);
   print(data2);
 }
}