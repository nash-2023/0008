import 'package:flutter/material.dart';

class LnchIcns extends StatefulWidget {
  const LnchIcns({super.key, required this.title});
  final String title;

  @override
  State<LnchIcns> createState() => _LnchIcnsState();
}

class _LnchIcnsState extends State<LnchIcns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(child: Image.asset("./imgs/us.jpg")),
    );
  }
}



/*

With Dart:

 $ dart pub add flutter_launcher_icons

With Flutter:

 $ flutter pub add flutter_launcher_icons

 */