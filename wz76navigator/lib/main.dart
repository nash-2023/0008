import 'package:flutter/material.dart';
import 'package:wz76navigator/one.dart';
import 'package:wz76navigator/two.dart';
import 'package:wz76navigator/three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '76 Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //**************************** Second Option */
      routes: {
        'one': (context) => One(),
        'two': (context) {
          return Two();
        },
        'three': (context) => Three(),
      },
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //*************  first option */
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context)
            //         .push(MaterialPageRoute(builder: (context) {
            //       return One();
            //     }));
            //   },
            //   child: Text("go to Page #1"),
            // ),
            //**************************** Second Option */
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('one'),
              child: Text("go to Page #1"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('two'),
              child: Text("go to Page #2"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('three'),
              child: Text("go to Page #3"),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) Navigator.of(context).pop();
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
