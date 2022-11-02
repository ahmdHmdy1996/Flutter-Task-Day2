import 'package:flutter/material.dart';
import 'package:product/HomeScreen.dart';
import 'package:product/ListScreen.dart';
import 'package:product/MainScreen.dart';
import 'package:product/productscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Store',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        canvasColor: Colors.white,
        // primaryColor: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MainScreen(),
        "/List": (context) => ListScreen(),
        "/home": (context) => HomeScreen(),
        "/product": (context) => ProductScreen(),
      },
    );
  }
}
