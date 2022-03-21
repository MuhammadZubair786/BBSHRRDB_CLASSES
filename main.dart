import "dart:io";

void main() {
  stdout.write("Enter Title :");
  var title = stdin.readLineSync()!;
   var balance = 0;

  Bank obj = new Bank(title, balance);

  var i =true;
while(i==true){
  print("\n1)Deposist \n2) Withdraw\n 3)Show All Transaction \n4 Print All Data");
print("*********************************************************");
  stdout.write("Enter Option : ");
  var b = int.parse(stdin.readLineSync()!);
  
  if(b==1){
    print("*********************************************************");
    stdout.write("Enter Balance : ");
     var d = int.parse(stdin.readLineSync()!);
  obj.Deposist(d); //call method

  }

  else if(b==2){
    print("*********************************************************");
    stdout.write("Enter WithDraw Amount  : ");
  var data = int.parse(stdin.readLineSync()!);
  obj.WithDraw(data);

  }
  else if(b==3){
    print("*********************************************************");
     obj.Transaction();

  }
  else if(b==4){
    print("*********************************************************");
    obj.PrintAllData();

  }
  else{
    print("Enter Correct Option");
  }

  stdout.write("If You Want To Continue Then Press y :  ");
  var data = stdin.readLineSync()!;
  if(data.toLowerCase() == "y" || data.toLowerCase()== "yes"){
    i=true;
  }
  else{
    i=false;
  }

}
  
}

class Bank {
  //parameters
  Bank(String? title, int? balance) {
    this.title = title;
    this.balance = balance;
    this.currentamount = balance;
  }

  //class varaibales
  String? title; //get null value
  int? balance; //null
  List transaction = [];
  int? currentamount;

  void Deposist(int amount) {
    // 100+100
    // error=>null+100
    balance = int.parse(balance.toString()) + amount;
    transaction.add(amount); //add new amount

    print("New Balance : ${balance}");
    print("Transaction List : ${transaction}");
  }

  void WithDraw(int amount) {
    if (amount > int.parse(balance.toString())) {
      print("No Sufficent Balance");
    } else if (amount < int.parse(balance.toString())) {
      balance = int.parse(balance.toString()) - amount;
      transaction.add(-amount); //withdraw

      print("New Balance : ${balance}");
      print("Transaction List : ${transaction}");
    }
  }

  void Transaction() {
    transaction.forEach((ele) {
      if (ele > 0) {
        print("Amount Deposits : ${ele}");
      } else if (ele < 0) {
        print("Amount WithDraw : ${ele}");
      }
    });
  }

  void PrintAllData() {
    print("Title : ${title}");
    print("Current Balance : ${balance}");
    print("First Time Balance : ${currentamount}");
    transaction.forEach((element) {
      print(element);
    });
  }
}
