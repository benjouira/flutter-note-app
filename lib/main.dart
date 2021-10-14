import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:note_app/auth/login.dart';
import 'package:note_app/auth/signup.dart';
import 'package:note_app/home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          buttonColor: Colors.red,
          textTheme: TextTheme(
              headline1: TextStyle(fontSize: 20, color: Colors.white))),
      home: Login(),
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => Login(),
        "signup": (context) => Signup(),
        "homepage": (context) => HomePage()
      },
    );
  }
}
