import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AweDial extends StatefulWidget {
  const AweDial({super.key, required this.title});
  final String title;
  @override
  State<AweDial> createState() => _AweDialState();
}

class _AweDialState extends State<AweDial> {
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
              // me implementation :(
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
