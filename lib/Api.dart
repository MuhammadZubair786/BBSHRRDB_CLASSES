import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class AppiIntegration extends StatefulWidget {
  const AppiIntegration({ Key? key }) : super(key: key);

  @override
  State<AppiIntegration> createState() => _AppiIntegrationState();
}

class _AppiIntegrationState extends State<AppiIntegration> {
  @override
  var userdata =[];

   apifetch() async {

          var res = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));

          // print(res.body);
          var getdata = jsonDecode(res.body);

        // print(getdata[0]);

        var user=[];

        setState(() {
          userdata=[];
        });

        for (var i=0;i<getdata.length;i++){
          // print("User index : ${i}");
          // print("User email : ${getdata[i]["email"]}");
          // print("User name : ${getdata[i]["username"]}");
          // print("User name : ${getdata[i]["address"]["city"]}");
          // print("User name : ${getdata[i]["phone"]}");

         var obj ={
           "email":getdata[i]["email"],
           "name":getdata[i]["username"],
           "address":getdata[i]["address"]["city"],
           "phone":getdata[i]["phone"]
         };
        userdata.add(obj);

        }
        // print(userdata[0]);
        setState(() {
          userdata=userdata;
        });
// print(userdata[0]);
// return userdata;
// setState(() {
//   userdata=userdata;
// });
  }
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: ElevatedButton(
              
              onPressed: apifetch,
            child: Text("APi Fetch"),
            ),
          ),
    
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: userdata.length,
            itemBuilder: (context,i){
              print(userdata[i]["email"]);
              return Card(
    
                child: Container(
                  height: 100,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Text(userdata[i]["email"]),
                      Text(userdata[i]["name"]),
                      Text(userdata[i]["address"]),
              
              
                    ],
                  ),
                ),
              );
              // return Container();
    
    
            })
          // FutureBuilder(
          //   future: apifetch(),
    
          //   builder: (context,snapshot){
          //    print(snapshot.data.runtimeType);
          //     if(snapshot.data==null){
          //       return Container(
          //         child: Text("Wait For Getting Dtaa"),
          //       );
    
          //     }
          //     else{
          //       // print(snapshot.data[0]);
          //     }
          //     return Text("skksk");
          //     }
              
          // )
             
          
      
              
            
            
        ],
      ),
    );
  }
  
}
class UserModel{
  var id;
  var name;
  var email;
  var address;
  var contact;

  UserModel(this.id,this.name,this.email,this.address,this.contact);

    
  }