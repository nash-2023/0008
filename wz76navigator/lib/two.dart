import 'package:flutter/material.dart';
import 'package:wz76navigator/three.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('three');
              },
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
