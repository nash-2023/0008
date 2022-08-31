import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "./images/id.jpg",
              height: 300.0,
              width: 300.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "User Name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.1),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.1),
                      ),
                    ),
                    validator: (em) {
                      if (!EmailValidator.validate(em!)) {
                        return "Invalid Email";
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.1),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: MaterialButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("If You Have Account "),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, "login");
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

      // body: Center(
      //   child: Column(
      //     children: [
      //       Container(
      //         width: 200.0,
      //         height: 200.0,
      //         child: Image.asset("./images/ark.jpg"),
      //       ),
      //       Container(
      //         width: 200.0,
      //         height: 200.0,
      //         child: Image(
      //           image: AssetImage("./images/ark.jpg"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //       // ElevatedButton(
      //       //   onPressed: () {
      //       //     print(Navigator.canPop(context));
      //       //     // Navigator.pushNamed(context, "signup");
      //       //     // Navigator.pushReplacementNamed(context, "signup");
      //       //     Navigator.pop(context);
      //       //   },
      //       //   child: Text("back"),
      //       // ),
      //     ],
      //   ),
      // ),