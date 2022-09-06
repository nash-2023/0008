import 'package:flutter/material.dart';

class Addnote extends StatefulWidget {
  const Addnote({Key? key}) : super(key: key);

  @override
  State<Addnote> createState() => _AddnoteState();
}

class _AddnoteState extends State<Addnote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
                maxLength: 30,
                decoration: InputDecoration(
                  // hintText: "Title",
                  labelText: "Title",
                  prefixIcon: Icon(Icons.title),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    // borderSide: BorderSide(width: 2.0, color: Colors.red),
                  ),
                ),
              ),
              TextFormField(
                maxLines: 3,
                maxLength: 100,
                decoration: InputDecoration(
                  // hintText: "Title",
                  labelText: "Note",
                  prefixIcon: Icon(Icons.note),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    // borderSide: BorderSide(width: 2.0, color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
