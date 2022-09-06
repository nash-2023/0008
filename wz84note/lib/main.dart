import 'package:flutter/material.dart';
import 'package:wz84note/auth/login.dart';
import 'package:wz84note/auth/sign_up.dart';
import 'package:wz84note/crud/addnote.dart';
import 'package:wz84note/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Book',
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        'login': (context) => Login(),
        'signup': (context) => Signup(),
        'homepage': (context) => HomePage(),
        'addnote': (context) => Addnote(),
      },
      theme: ThemeData(
        primaryColor: Colors.red,
        textTheme: TextTheme(),
      ),
    );
  }
}
