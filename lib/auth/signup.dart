import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
            // widthFactor: 300,
            child: Image.network(
              "lib/images/logo.png",
              height: 250,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
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
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefix: Icon(
                        Icons.email,
                      ),
                      hintText: "email",
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
                TextFormField(
                  // is password field
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefix: Icon(
                        Icons.lock_rounded,
                      ),
                      hintText: "re-enter password",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                Divider(),
                Row(
                  children: [
                    Text(
                      "if you already have an account ",
                      style: TextStyle(color: Colors.white),
                    ),
                    InkWell(
                      child: Text(
                        "Click here",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("login");
                      },
                    )
                  ],
                ),
                Divider(),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "signup",
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
