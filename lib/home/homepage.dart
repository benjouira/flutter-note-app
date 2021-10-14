import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {"note": "1 from 8:00 am to 10:00pm learn flutter", "image": "3.jpg"},
    {"note": "2 from 8:00 am to 10:00pm learn flutter", "image": "4.jpg"},
    {"note": "3 from 8:00 am to 10:00pm learn flutter", "image": "5.jpg"},
    {"note": "4 from 8:00 am to 10:00pm learn flutter", "image": "6.jpg"},
    {"note": "5 from 8:00 am to 10:00pm learn flutter", "image": "7.jpg"},
    {"note": "6 from 8:00 am to 10:00pm learn flutter", "image": "8.jpg"},
    {"note": "7 from 8:00 am to 10:00pm learn flutter", "image": "9.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, i) {
              return ListNotes(nt: notes[i]);
            }),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final nt;
  const ListNotes({this.nt});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(flex: 1, child: Image.network("./images/1.jpg")),
          Expanded(
            flex: 2,
            child: ListTile(
                title: Text("${nt['note']}"),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit))),
          ),
        ],
      ),
    );
  }
}
