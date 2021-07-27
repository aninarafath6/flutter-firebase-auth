// ignore: prefer_double_quotes
import 'package:firebase_authentication/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: public_member_api_docs
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter firebase authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
