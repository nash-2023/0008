import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future getPosition() async {
    late bool services;
    services = await Geolocator.isLocationServiceEnabled();
    print("location service enabled $services");
    if (services) {
      AwesomeDialog(
          context: context,
          title: "Location Services",
          body: Text("Location Services Not Enabled"))
        ..show();
    }
  }

  void initState() {
    getPosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [],
      ),
    );
  }
}

/**
 * flutter pub add flutter_native_splash
 * 
 * -- create a brand new file called (flutter_native_splash.yaml)
 * and past in it the configuration from the site 
 * 
 * flutter pub run flutter_native_splash:create
 */

/*
flutter pub add geolocator

// var a;
  // Future getData() async {
  //   print("Before");
  //   await Future.delayed(Duration(seconds: 5), () {
  //     print("delay");
  //     a = 10;
  //   });
  //   print("After");
  //   print(a);
  // }

  // void initState() {
  //   getData();
  //   super.initState();
  // }
*/
