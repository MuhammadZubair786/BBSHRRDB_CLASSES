import 'dart:io';

void main() {
  int cr = int.parse(stdin.readLineSync()!);
 
  CheckNotes(cr);
}

void CheckNotes(cr) {
  num h = cr ~/ 100;   //mera note 470/100=4
  print(h);  //4

  num r = cr % 100; // return 470%100=>70

  num fty = r ~/ 50; //70~/50=1
  
    print(fty);
 
  num t1 = cr % 50; // 20
  num ten = t1 ~/ 10; //20/10
  
    print(ten);
  
}
