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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController mycontroler;
  @override
  void initState() {
    mycontroler = new TabController(length: 4, vsync: this, initialIndex: 3);
    super.initState();
  }

  List<Widget> webpage = [
    Text("Page 1"),
    Text("Page 2"),
    Text("Page 3"),
    Text("Page 4"),
  ];
  int selectedItem = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        bottom: TabBar(
          controller: mycontroler,
          padding: EdgeInsets.all(10.0),
          // indicatorColor: Colors.red,
          // labelColor: Colors.green,
          labelStyle: TextStyle(
            fontSize: 16.0,
          ),
          tabs: [
            Tab(
              icon: Icon(Icons.ac_unit),
              child: Text("page one"),
            ),
            Tab(
              icon: Icon(Icons.ac_unit),
              child: Text("page two"),
            ),
            Tab(icon: Icon(Icons.ac_unit), child: Text("page Three")),
            Tab(
              icon: Icon(Icons.ac_unit),
              child: Text("page four"),
            ),
          ],
        ),
      ),
      body: webpage[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.red,
        selectedItemColor: Colors.green,
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedItemColor: Colors.blue,
        unselectedLabelStyle: TextStyle(color: Colors.blue),
        currentIndex: selectedItem,
        onTap: (i) {
          setState(() {
            selectedItem = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "page one",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "page two",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "page three",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "page four",
          ),
        ],
      ),
    );
  }
}
