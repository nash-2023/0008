import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '80 Scroll Controler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '80 Scroll Controler'),
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
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    _scrollController.addListener(() {
      print(_scrollController.offset);
      print(_scrollController.position.maxScrollExtent);
      print(_scrollController.position.minScrollExtent);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          ElevatedButton(
            onPressed: () {
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: Duration(seconds: 1),
                curve: Curves.bounceIn,
              );
            },
            child: Text('End Of List'),
          ),
          ...List.generate(
              100,
              (index) => Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        color: Color.fromARGB(
                            255, index * 10, index * 20, index * 30),
                      ),
                      // Divider(
                      //   color: Colors.black,
                      //   indent: 10.0,
                      //   endIndent: 10.0,
                      // ),
                    ],
                  )),
          ElevatedButton(
            onPressed: () {
              _scrollController.animateTo(
                0.0,
                duration: Duration(seconds: 1),
                curve: Curves.easeIn,
              );
            },
            child: Text('Start of List'),
          ),
        ],
      ),
    );
  }
}
