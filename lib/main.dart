import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_apps/auth/login.dart';
import 'package:flutter_apps/auth/signup.dart';
import 'package:flutter_apps/crud/addnotes.dart';
import 'package:flutter_apps/home/homepage.dart';

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
          primarySwatch: Colors.purple,
          // ignore: deprecated_member_use
          buttonColor: Colors.red,
          textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 20, color: Colors.white))),
      home: Login(),
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => Login(),
        "signup": (context) => Signup(),
        "homepage": (context) => HomePage(),
        "addnotes": (context) => AddNotes(),
      },
    );
  }
}
