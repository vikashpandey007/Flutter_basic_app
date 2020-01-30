import 'package:flutter/material.dart';

main() {
  runApp(Signup());
}

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Signup",
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text("Signup page"),
        //   backgroundColor: Colors.black,
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlutterLogo(
              size: 60.0,
            ),
            Container(
               margin: EdgeInsets.fromLTRB(25, 15, 25, 7),
               child: Text("User sign in",
                style: TextStyle(fontSize: 17)),
              
            ),
             
                
            Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 7),
              child: TextField(
        
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                    // Style: TextStyle(fontSize: 20),
                      hintText: "Fisrt name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)))),
            ),
             Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 7),
              child: TextField(
        
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                    // Style: TextStyle(fontSize: 20),
                      hintText: "Last name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)))),
            ),
             Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 7),
              child: TextField(
        
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                    // Style: TextStyle(fontSize: 20),
                      hintText: "E-mail",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)))),
            ),
             Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 7),
              child: TextField(
                    obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                    // Style: TextStyle(fontSize: 20),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 7, 25, 15),
              child: TextField(
                 obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                      // labelStyle: TextStyle(fontSize: 20),
                      hintText: " confirm password",
                      
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)))),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("i accept the terms and uses & "),
                  Text("privacy policy",
                        style: TextStyle(color: Colors.blue, fontSize: 16)),
                ],
              ),
            ),Padding(padding: EdgeInsets.only(bottom: 10),),
            MaterialButton(
              
              height: 50,
              minWidth: 70,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)),
              elevation: 8.0,
              highlightColor: Colors.red[50],
              child: Text(
                "creat account",
                style: TextStyle(fontSize: 17)),
                  textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {},
            ),
        
          ],
        ),
      ),
    );
  }
}
