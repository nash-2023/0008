import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wz 74',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _formState = new GlobalKey<FormState>();
  String? _name;
  String? _mail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formState,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            TextFormField(
              onSaved: (txt) {
                _name = txt;
              },
              validator: (txt) {
                if (txt!.length == 0) {
                  return ("Empty");
                }
                if (txt.length < 5) {
                  return ("file is too small");
                }
              },
              decoration: InputDecoration(
                hintText: "name",
              ),
            ),
            TextFormField(
              onSaved: (txt) {
                _mail = txt;
              },
              validator: (txt) {
                if (txt!.length == 0) {
                  return ("Empty");
                }
                if (txt.length < 5) {
                  return ("file is too small");
                }
              },
              decoration: InputDecoration(
                hintText: "mail",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                var x = _formState.currentState;
                // x!.validate();
                if (x!.validate()) {
                  x.save();
                  print("valid");
                } else {
                  print("IN VALID !!!");
                }
                // print(x);
                print("User Name: $_name");
                print("Email :$_mail");
              },
              child: Text("validator"),
            ),
          ],
        ),
      ),
    );
  }
}
