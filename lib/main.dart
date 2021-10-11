import 'package:flutter/material.dart';
import 'package:note_app/auth/login.dart';

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
      ),
      home: Login(),
//       show and hide debug banner
      debugShowCheckedModeBanner: false,
//       create root for login page
      routes: {"login": (context) => Login()},
    );
  }
}
