import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'package:twitter_ui/Homepage.dart';
import 'package:twitter_ui/Mail.dart';
import 'package:twitter_ui/Notify.dart';
import 'package:twitter_ui/Search.dart';

void main(){
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
       home: new MyApp(),
       )
      );
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new AfterSplash(),
      image:Image(
        alignment: Alignment.center,
        image: AssetImage("assets/logo.png"),
      ),
      backgroundColor: Color(0xFF00acee),
      photoSize: 65.0,
    );
  }
}
class AfterSplash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: brightness,
      ),
      themedWidgetBuilder: (context, theme) {
        return Home();
              }
            );
          }
        }
        
        class Home extends StatefulWidget {
          @override
          _HomeState createState() => _HomeState();
        }
        
        class _HomeState extends State<Home> {
          int currentIndex = 0;
  var array = [
    Homepage(),Search(),Notify(),Mail()
  
  ];
   void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
  
  void changeColor() {
    DynamicTheme.of(context).setThemeData(new ThemeData(
        primaryColor: Theme.of(context).primaryColor == Colors.indigo? Colors.red: Colors.indigo
    ));
  }
          @override
          Widget build(BuildContext context) {
            return Scaffold(
                    body: array[currentIndex],
                    bottomNavigationBar: BottomNavigationBar(
                      onTap: onTabTapped, // new
                      currentIndex: currentIndex,
                      type: BottomNavigationBarType.fixed,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), title: Text('')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.search),
                            title: Text('')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.notifications_none),
                            title: Text('')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.mail_outline),
                            title: Text('')),
                        
                      ],
                    ),

                    
                   );
                  
          }
        }