import 'package:flutter/material.dart';
import 'package:safecampus/login/firstPage.dart';
import 'package:safecampus/screens/aboutUs.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: aboutUs(),
        ),
      ),
    );
  }
}
