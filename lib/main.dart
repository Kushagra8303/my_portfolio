 // To check platform
import 'package:flutter/material.dart';
// Native platforms ke liye
import 'home.dart';

void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
      canvasColor: Colors.purple.shade50,
    ),
    routes: {
      "/": (context) => Home(),
    },
  ));

}

