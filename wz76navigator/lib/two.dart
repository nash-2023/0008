import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two"),
      ),
      body: Center(child: Text("page Two")),
    );
  }
}
