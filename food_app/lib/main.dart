import 'package:flutter/material.dart';
import 'package:food_app/McDonalds.dart';
import 'package:food_app/logIn.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodStation',
      debugShowCheckedModeBanner: false,
      home: McD(),
    );
  }
}
