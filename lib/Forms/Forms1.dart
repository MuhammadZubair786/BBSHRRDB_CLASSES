import 'package:flutter/material.dart';

class FormsClass extends StatefulWidget {
  @override
  State<FormsClass> createState() => _FormsClassState();
}

class _FormsClassState extends State<FormsClass> {
  var status = true;
  var gender;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Container(
      //     width: 250,
      //     height: 100,
      //     margin: EdgeInsets.all(20),
      //     child: TextField(
      //       controller: name,
      //       autocorrect: true,
      //       obscureText: status ? true : false,
      //       keyboardType: TextInputType.number,
      //       textAlign: TextAlign.right,
      //       cursorColor: Colors.red,
      //       // cursorHeight: 100,
      //       decoration: InputDecoration(
      //           hintText: "Enter your Name",
      //           labelText: "Enter name",
      //           prefixIcon: Icon(Icons.accessibility),
      //           suffixIcon: GestureDetector(
      //             child: Icon(Icons.remove_red_eye),
      //             onTap: () {
      //               setState(() {
      //                 status = !status;
      //               });
      //             },
      //           ),
      //           enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(
      //                 width: 2,
      //                 color: Colors.yellow,
      //               ),
      //               borderRadius: BorderRadius.circular(100)),
      //           focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(width: 2, color: Colors.red),
      //               borderRadius: BorderRadius.circular(20))),
      //     )
      //     // prefixText: "Name enter"
      //     ),
      //      Container(
      //     width: 250,
      //     height: 100,
      //     margin: EdgeInsets.all(20),
      //     child: TextField(
      //       controller: email,
      //       autocorrect: true,
      //       obscureText: status ? true : false,
      //       keyboardType: TextInputType.number,
      //       textAlign: TextAlign.right,
      //       cursorColor: Colors.red,
      //       // cursorHeight: 100,
      //       decoration: InputDecoration(
      //           hintText: "Enter your Name",
      //           labelText: "Enter name",
      //           prefixIcon: Icon(Icons.accessibility),
      //           suffixIcon: GestureDetector(
      //             child: Icon(Icons.remove_red_eye),
      //             onTap: () {
      //               setState(() {
      //                 status = !status;
      //               });
      //             },
      //           ),
      //           enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(
      //                 width: 2,
      //                 color: Colors.yellow,
      //               ),
      //               borderRadius: BorderRadius.circular(100)),
      //           focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(width: 2, color: Colors.red),
      //               borderRadius: BorderRadius.circular(20))),
      //     )
      //     // prefixText: "Name enter"
      //     ),
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
      ElevatedButton(
          onPressed: () {
            print(name.text + email.text.toString());
          },
          child: Text("Check value"))
    ]);
  }
}
