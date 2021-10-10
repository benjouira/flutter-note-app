import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white10,
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            widthFactor: 300,
            child: Image.network(
              "lib/images/2.gif",
            ),
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
