import 'package:flutter/material.dart';

import 'homepage.dart';

main() {
  runApp(Routeapp());
  
}
class Routeapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "routeapp",
      theme: ThemeData.dark(),
      home:  homepage()
    );
  }
}

