import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var data;
  String url="http://userapi.tk/";
  Future<String> getjsondata() async {
   var responese=await http.get(
     Uri.encodeFull(url)
   );
   setState(() {
     var convertdata=json.decode(responese.body);
     data=convertdata;
     print(data);
   });
}
 @override
  void initState() {
    getjsondata();
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,index){
          return Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data[index]["ImageURL"]),
              ),
              title: Text(data[index]["Name"]),
              trailing: Text(data[index]["ID"]),
            ),
          );
        },
      )
    );
  }
}