import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reference/screens/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home1(),
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
          accentColor: Colors.deepPurpleAccent,
          primaryColor: Colors.deepPurpleAccent,
          primaryColorDark: Colors.deepPurpleAccent),
    );
  }
}
