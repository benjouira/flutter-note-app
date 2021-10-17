import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
    return Directionality(
      // el directionality nesta3mlouha bach n7awlou el lou8a ll 3arbi
      //twali el app mn limin ll ysar
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home page"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed("addnotes");
          },
        ),
        body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) {
                return Dismissible(
                    key: Key("$i"), child: ListNotes(nt: notes[i]));
              }),
        ),
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
          Expanded(
              flex: 1,
              child: Image.network(
                "lib/images/${nt['image']}",
                fit: BoxFit.fill,
              )),
          Expanded(
            flex: 2,
            child: ListTile(
              title: Text("Title"),
              subtitle: Text("${nt['note']}"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            ),
          ),
        ],
      ),
    );
  }
}
