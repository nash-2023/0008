import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _notes = [
    {
      'title': "home work",
      'note': "lorem epsum0",
      'image': 'ark.jpg',
    },
    {
      'title': "home work",
      'note': "lorem epsum0",
      'image': 'ark.jpg',
    },
    {
      'title': "home work",
      'note': "lorem epsum0",
      'image': 'ark.jpg',
    },
    {
      'title': "home work",
      'note': "lorem epsum0",
      'image': 'ark.jpg',
    },
    {
      'title': "home work",
      'note': "lorem epsum0",
      'image': 'ark.jpg',
    },
    {
      'title': "home work",
      'note': "lorem epsum0",
      'image': 'ark.jpg',
    },
    {
      'title': "home work",
      'note': "lorem epsum0",
      'image': 'set.jpg',
    },
    {
      'title': "home work",
      'note': "lorem epsum0",
      'image': 'us.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        children: List.generate(
          _notes.length,
          (i) {
            String img = _notes[i]['image'];
            return ListTile(
              leading: Image.asset(
                "./images/$img",
                width: 35.0,
                height: 35.0,
                fit: BoxFit.cover,
              ),
              title: Text(_notes[i]["title"]),
              subtitle: Text(_notes[i]['note']),
            );
          },
        ),
      )),
    );
  }
}
