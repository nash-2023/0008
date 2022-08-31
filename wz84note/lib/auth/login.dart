import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formState = new GlobalKey<FormState>();
  String? _name;
  String? _mail;
  String? _psswrd;

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
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "homepage");
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("If You Don't Have Account "),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, "signup");
                            },
                            child: Text(
                              "Click Here",
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

//  body: Form(
//       key: _formState,
//       autovalidateMode: AutovalidateMode.always,
//       child: Column(
//         children: [
//           TextFormField(
//             onSaved: (txt) {
//               _mail = txt;
//             },
//             validator: (txt) {
//               if (!EmailValidator.validate(txt!)) return "Invalid Email";
//             },
//             decoration: InputDecoration(
//               hintText: "Email",
//             ),
//           ),
//           TextFormField(
//             onSaved: (txt) {
//               _mail = txt;
//             },
//             validator: (txt) {
//               if (txt!.length == 0) {
//                 return ("Empty");
//               }
//               if (txt.length < 5) {
//                 return ("file is too small");
//               }
//             },
//             decoration: InputDecoration(
//               hintText: "mail",
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               var x = _formState.currentState;
//               // x!.validate();
//               if (x!.validate()) {
//                 x.save();
//                 print("valid");
//               } else {
//                 print("IN VALID !!!");
//               }
//               // print(x);
//               print("Email :$_mail");
//             },
//             child: Text("Log In"),
//           ),
//         ],
//       ),
//     ),

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
//       ElevatedButton(
//           onPressed: () {
//             print(Navigator.canPop(context));
//             Navigator.pushNamed(context, "signup");
//             // Navigator.pushReplacementNamed(context, "signup");
//             // Navigator.pop(context);
//           },
//           child: Text("Sign Up"))
//     ],
//   ),
// ),
