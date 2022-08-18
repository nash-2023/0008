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
      debugShowCheckedModeBanner: false,
      title: '76 Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      //**************************** Second Option */
      routes: {
        'one': (context) => One(),
        'two': (context) => Two(),
        'three': (context) => Three(),
        'home': (context) => MyHomePage(),
      },
      //****************************************** */
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
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
              // onPressed: () => Navigator.of(context).pushNamed('one'),
              //***************************** ep 78-pushReplacementNamed('')*/
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('one'),
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
                //***********************************ep 77-pop(), canPop() */
                if (Navigator.of(context).canPop())
                  Navigator.of(context).pop();
                else {
                  showDialog(
                      context: context,
                      builder: (BuildContext) {
                        return AlertDialog(
                          title: Text("no Back ya 5ra!"),
                        );
                      });
                }
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
