import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Packages'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.success,
                animType: AnimType.bottomSlide,
                title: 'Success',
                desc: 'Hellow there',
                // body: Text("Hellow from body widget"),
                btnCancelOnPress: () {
                  print("cancelled");
                },
                btnOkOnPress: () {
                  print("ok_ed");
                },
              )..show();
              // showDialog(
              //   context: context,
              //   builder: (BuildContext) {
              //     return Dialog(
              //       child: Container(
              //         width: 100.0,
              //         height: 100.0,
              //         padding: EdgeInsets.all(20.0),
              //         child: Text("allert"),
              //       ),
              //     );
              //   },
              // );
            },
            child: Text("show Allert"),
          ),
        ],
      ),
    );
  }
}
