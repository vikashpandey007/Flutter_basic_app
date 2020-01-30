import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  var getname;
  // Secondpage(this.getname)
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  // var getname1
  // _ScondpageState(this.get)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("secondpage"),
      ),
      body: Center(
        
        child: Column(
          children: <Widget>[
            MaterialButton(
              child: Text("press"),
              onPressed: (){
                     Navigator.pop(context);
              },
            
            )
          ],
        ),
      ),

    );
  }
}