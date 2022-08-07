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
              validator: (txt) {
                if (txt!.length == 0) {
                  return ("Empty");
                }
                if (txt.length < 5) {
                  return ("file is too small");
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                var x = _formState.currentState;
                x!.validate();
                // if (x!.validate()) {
                //   print("valid");
                // } else {
                //   print("IN VALID !!!");
                // }
                // print(x);
              },
              child: Text("validator"),
            ),
          ],
        ),
      ),
    );
  }
}
