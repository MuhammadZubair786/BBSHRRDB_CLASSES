import 'dart:io';

void  main(List<String> args) {
  print(args.first); //property use for get list first data
  var b = File(args.first.toString()); //open file
  var c = b.readAsStringSync(); //read line by line
  // print(c);



var i = true;
while(i==true){
  stdout.write("Select Option\1)Add New Data \n2)Delete \n3)Search \n4 File Rename\n ");
var getchoice = int.parse(stdin.readLineSync()!);

if(getchoice==1){
  stdout.write("Enter Data For Add");
  var getuserdata = stdin.readLineSync()!;
  b.writeAsStringSync(b.readAsStringSync()+"\n ${getuserdata}");

}
else if(getchoice==2){
  stdout.write("Do You Want to Delte ${args.first} File");
  var usernew = stdin.readLineSync()!;
  if(usernew.toLowerCase()=="y"  || usernew.toLowerCase()== "yes"){
    b.delete();
      
  }
  else{
    print("If You Delete Fiel Then enter Yes ");
  }

}
else if(getchoice==3){
  stdout.write("Enter Value For Search");
  var search = stdin.readLineSync();
  var file = File(args.first.toString());
  var newdata = file.readAsLinesSync();
  var chk =0;
  for(var i=0;i<newdata.length;i++){
    if(newdata[i]==search){
    chk+=1;

    }
  }
  if(chk==0){
    print("value is not present");
  }
  else{
    print("value is  present");
  }
}

}


}