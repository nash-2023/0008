import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In "),
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
            ElevatedButton(
                onPressed: () {
                  print(Navigator.canPop(context));
                  Navigator.pushNamed(context, "signup");
                  // Navigator.pushReplacementNamed(context, "signup");
                  // Navigator.pop(context);
                },
                child: Text("Sign Up"))
          ],
        ),
      ),
    );
  }
}
