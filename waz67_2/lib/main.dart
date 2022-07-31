import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waz 67-2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Waz 67-2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController myPgCtrl;

  @override
  void initState() {
    myPgCtrl = PageController(
      initialPage: 0,
      keepPage: false,
      viewportFraction: 1.0,
    );
    super.initState();
  }

  List<Container> ctnrs = [
    Container(color: Colors.red, child: Text("page 1")),
    Container(color: Colors.blue, child: Text("page 2")),
    Container(color: Colors.green, child: Text("page 3")),
    Container(color: Colors.cyan, child: Text("page 4")),
    Container(color: Colors.yellow, child: Text("page 5")),
    Container(color: Colors.black38, child: Text("page 6")),
    Container(color: Color.fromARGB(255, 211, 71, 188), child: Text("page 7")),
    Container(color: Colors.orange, child: Text("page 8")),
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 300.0,
            child: PageView.builder(
              controller: myPgCtrl,
              itemCount: ctnrs.length,
              itemBuilder: (context, i) {
                return ctnrs[i];
              },
              onPageChanged: ((value) => print(value)),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              myPgCtrl.animateToPage(5,
                  duration: Duration(seconds: 2), curve: Curves.easeIn);
            },
            child: Text("jump to page #6"),
          )
        ],
      ),
    );
  }
}
