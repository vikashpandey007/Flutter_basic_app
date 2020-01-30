import 'package:flutter/material.dart';

main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        // backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text("Login Page"),
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
               child: Text("User Log in",
                style: TextStyle(fontSize: 17)),
              
            ),
             
                
            Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 7),
              child: TextField(
        
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                    // Style: TextStyle(fontSize: 20),
                      hintText: "Username",
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
                      hintText: "password",
                      
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)))),
            ),
            MaterialButton(
              height: 50,
              minWidth: 70,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)),
              elevation: 8.0,
              highlightColor: Colors.red[50],
              child: Text(
                "Login",
                style: TextStyle(fontSize: 17)),
                  textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {},
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Dont have an Account? "),
                  Text("Sign up",
                        style: TextStyle(color: Colors.blue, fontSize: 16)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
