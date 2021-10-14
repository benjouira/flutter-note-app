import 'package:flutter/gestures.dart';
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
      color: Colors.purple.shade900,
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            widthFactor: 300,
            child: Image.network(
              "lib/images/logo.png",
              height: 300,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefix: Icon(
                        Icons.person,
                      ),
                      hintText: "username",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                Divider(),
                TextFormField(
                  // is password field
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefix: Icon(
                        Icons.lock_rounded,
                      ),
                      hintText: "password",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                Divider(),
                Row(
                  children: [
                    Text(
                      "if you don't have an account ",
                      style: TextStyle(color: Colors.white),
                    ),
                    InkWell(
                      child: Text(
                        "Click here",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                    )
                  ],
                ),
                Divider(),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("homepage");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.amber[400],
                ),
              ],
            )),
          )
        ],
      ),
    ));
  }
}
