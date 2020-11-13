import 'package:e_learning/screens/category_screen.dart';
import 'package:e_learning/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SS",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
    // home: Category());
  }
}
