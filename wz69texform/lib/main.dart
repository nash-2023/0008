import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '69-Text Form Field',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '69-Text Form Field'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
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
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Type Your Name",
                // hintMaxLines: 1,sdf
                // hintStyle: TextStyle(
                //   color: Colors.red,
                // ),
                // prefix: Text("My name is "),
                // prefixIcon: Icon(Icons.verified_user),
                // prefixStyle: TextStyle(decoration: TextDecoration.lineThrough),
                // suffix: Text("my name."),
                // suffixIcon: Icon(Icons.verified_user),
                // suffixStyle: TextStyle(decoration: TextDecoration.lineThrough),
                // labelText: "Type your name",
                // labelStyle: TextStyle(decoration: TextDecoration.lineThrough),
                // filled: true,
                // fillColor: Color.fromARGB(19, 223, 0, 0),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Type Your email",
                enabled: false,
                disabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Type Your age",
                enabled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Type Your Gender",
                enabled: true,
                border: InputBorder.none,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Type Your Food",
                enabled: true,
                border: InputBorder.none,
                icon: Icon(Icons.g_mobiledata),
              ),
            ),
            TextFormField(
              cursorColor: Colors.red,
              cursorHeight: 40.0,
              cursorWidth: 3.0,
              // initialValue: "funney",
              keyboardType: TextInputType.phone,
              maxLength: 20,
              maxLines: 1,
              decoration: InputDecoration(
                  // hintText: "Type Your 006",
                  ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Type Your Password",
              ),
              // obscureText: true,
              initialValue: "read only field",
              readOnly: true,
            ),
          ],
        ));
  }
}
