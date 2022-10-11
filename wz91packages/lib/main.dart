import 'package:flutter/material.dart';
import 'package:wz91packages/awesomeDialog.dart';
import 'package:wz91packages/drpdnsrch.dart';
import 'package:wz91packages/launchIcons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Training 90s',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: AweDial(title: 'Awesome Dialoge'),
      home: DrbDnSrch(title: 'Drop Down Search'),
      // home: LnchIcns(title: 'Drop Down Search'),
    );
  }
}
