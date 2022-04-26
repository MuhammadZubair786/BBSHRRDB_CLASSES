import 'package:flutter/material.dart';

class FormsClass extends StatefulWidget {
  @override
  State<FormsClass> createState() => _FormsClassState();
}

class _FormsClassState extends State<FormsClass> {
  var status = true; //global scope
  var gender;
  var hob1=false;
  var hob2=false;

  var chk1 = true;

  var country =["Pak","Aus","SA"];
  var c1=[];
  var country1="ali";
  var _selected;

  TextEditingController name = TextEditingController(); //use for store data
  TextEditingController email = TextEditingController();

  void getdata() {
    var username = name.text; //local scope
    var useremail = email.text;

    if (username.length == 0 && useremail.length == 0) {
      print("Enter ALL DATA ");
      setState(() {
        chk1 = false;
      });
    } else if (username.length != 0 && useremail.length == 0) {
      print("Enter Email ");
      setState(() {
        chk1 = false;
      });
    } else if (username.length == 0 && useremail.length != 0) {
      print("Enter Name ");
    } else {
      print("Data get  ");
      setState(() {
        name.text = "";
        email.text = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          width: 250,
          height: 100,
          margin: EdgeInsets.all(20),
          child: TextField(
            controller: name, //help kis ka data kis controller ma save ho gya
            autocorrect: true,
            obscureText: status ? true : false,
            keyboardType: TextInputType.number, //keyboard change
            textAlign: TextAlign.center,
            cursorColor: Colors.yellow,
            // cursorHeight: 100,
            decoration: InputDecoration(
                hintText: "Enter your Name", //work as placeholder
                labelText: "Enter name",
                helperText:
                    "shnjnshjbf", //work as help for text field                prefixIcon: Icon(Icons.accessibility),//start icon
                suffixIcon: GestureDetector(
                  child: Icon(Icons.remove_red_eye),
                  onTap: () {
                    setState(() {
                      status = !status;
                    });
                  },
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.green),
                    borderRadius: BorderRadius.circular(20))),
          )
          // prefixText: "Name enter"
          ),
      Container(
          width: 250,
          // height: 100,
          margin: EdgeInsets.all(20),
          color: chk1 ? Colors.green : Colors.yellow,
          child: TextField(
            controller: email,
            autocorrect: true,
            obscureText: status ? true : false,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.right,
            cursorColor: Colors.red,
            // cursorHeight: 100,
            decoration: InputDecoration(
                hintText: "Enter your Name",
                labelText: "Enter name",
                prefixIcon: Icon(Icons.accessibility),
                suffixIcon: GestureDetector(
                  child: Icon(Icons.remove_red_eye),
                  onTap: () {
                    setState(() {
                      status = !status;
                    });
                  },
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: chk1 ? Colors.yellow : Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: chk1 ? Colors.yellow : Colors.blue),
                    borderRadius: BorderRadius.circular(20))),
          )
          // prefixText: "Name enter"
          ),
      Row(
        children: [
          Radio(
              activeColor: Colors.yellow,
              value: "Male",
              groupValue: gender,
              onChanged: (v) {
                setState(() {
                  gender = v;
                });
              }),
          Text("Male")
        ],
      ),
      Row(
        children: [
          Radio(
              activeColor: Colors.green,
              value: "feMale",
              groupValue: gender,
              onChanged: (v) {
                setState(() {
                  gender = v;
                });
              }),
          Text("feMale")
        ],
      ),
      Row(
        children: [
          Checkbox(
            value: hob1, 
            activeColor: Colors.green,
            onChanged: (value){
              print(value);
              setState(() {
                          hob1=value;
                            });
            }),
            Text("Programming")
        ],

      ),
       Row(
        children: [
          Checkbox(
            value: hob2, 
            activeColor: Colors.green,
            onChanged: (value){
              print(value);
              setState(() {
                          hob2=value;
                            });
            }),
            Text("Reading")
        ],

      ),
     Container(
       width: 400,
       child: DropdownButton(
                  
                  items: country.map(( value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Row(
                        children: [
                       
                          Text(value),
                        ],
                      ),
                    );
                  }).toList(),
                  hint: Text(
                      'Please choose a location                                       '), // Not necessary for Option 1
                  value: _selected,
                  onChanged: (newV) {
                    print(newV);
                    setState(() {
                      _selected = newV;
                    });
                  },
       ),
     ),
    
      ElevatedButton(
          onPressed: () {
            getdata();
          },
          child: Text("Check value"))
    ]);
  }
}
