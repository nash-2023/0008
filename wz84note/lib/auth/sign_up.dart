import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up "),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200.0,
              height: 200.0,
              child: Image.asset("./images/ark.jpg"),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              child: Image(
                image: AssetImage("./images/ark.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     print(Navigator.canPop(context));
            //     // Navigator.pushNamed(context, "signup");
            //     // Navigator.pushReplacementNamed(context, "signup");
            //     Navigator.pop(context);
            //   },
            //   child: Text("back"),
            // ),
          ],
        ),
      ),
    );
  }
}
