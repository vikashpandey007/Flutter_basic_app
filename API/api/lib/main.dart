
import 'package:flutter/material.dart';

import 'Homepage.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage()
      
    );
  }
}