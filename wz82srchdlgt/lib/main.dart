import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '82 - Search Deligate'),
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
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Text("Hellow World !"),
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  List names = [
    "Abdalla",
    "Anas",
    "Asmaa",
    "Ahmed",
    "Hazem",
    "Samy",
    "ya7ya",
    "Doaa",
    "Hegazy",
    "Mohammed",
    "Samy",
    "Sayed",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        query = "";
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("data");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List fltr = names.where((e) {
      return e[0] == query;
      // return true;
    }).toList();
    return ListView(
      children: List.generate(
        query == "" ? names.length : fltr.length,
        // query == "" ? names[i] : fltr[i],
        (i) {
          return Container(
            height: 75.0,
            color: Color.fromARGB(255, 248, 184, 180),
            child: Text(query == "" ? names[i] : fltr[i]),
          );
        },
      ),
    );
  }
}
