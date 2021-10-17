import 'dart:html';

import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  AddNotes({Key? key}) : super(key: key);

  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add notes"),
        ),
        body: Column(
          children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                  maxLength: 30,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "add title notes ",
                      prefix: Icon(Icons.note)),
                ),
                TextFormField(
                  maxLength: 200,
                  minLines: 1,
                  maxLines: 4,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "add title notes ",
                      prefix: Icon(Icons.note)),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: IconButton(
                      onPressed: () {
                        showButtomSheet();
                      },
                      icon: const Icon(
                        Icons.add_a_photo_rounded,
                        color: Colors.purple,
                      )),
                ),
                MaterialButton(
                    child: const Text("Add Note"),
                    color: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    onPressed: () {})
              ],
            ))
          ],
        ));
  }

  showButtomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 100,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  "Please Choose Image",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        child: Column(
                          children: const [
                            Icon(Icons.camera),
                            Divider(),
                            Text("Camera"),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        child: Column(
                          children: const [
                            Icon(Icons.photo_outlined),
                            Divider(),
                            Text("Gallery"),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
