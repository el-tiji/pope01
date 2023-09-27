import 'package:flutter/material.dart';
import 'package:pope01/pages/homePages.dart';
import 'package:pope01/pages/login.dart';
//import 'pages/homePages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: loginPage(),
      //home: HomePage(), 
    );
  }
}
