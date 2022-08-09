import 'package:flutter/material.dart';
import 'package:wz76navigator/two.dart';
import 'package:wz76navigator/main.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("One"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Two()));
                //************************************ep 78-pushreplacement() */
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Two()));
              },
              child: Text("go to Page #2"),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) Navigator.of(context).pop();
              },
              child: Text("Back"),
            ),
            ElevatedButton(
              // onPressed: () => Navigator.of(context).pushReplacement(
              // MaterialPageRoute(builder: (context) => MyHomePage())),
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed("home"),
              child: Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
