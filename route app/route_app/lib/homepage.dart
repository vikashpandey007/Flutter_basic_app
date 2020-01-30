import 'package:flutter/material.dart';
import 'package:route_app/secondpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("firstpage"),
      ),
      body: Center(
        
        child: Column(
          children: <Widget>[
            MaterialButton(
              child: Text("press"),
              onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Secondpage("vikash")));
              },
            
            )
          ],
        ),
      ),

    );
  }
}