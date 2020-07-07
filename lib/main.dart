import 'package:bmicalc/loadingScreen.dart';
import 'package:flutter/material.dart';
import 'inputPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21) ,
        scaffoldBackgroundColor: Color(0xFF0A0E21) ,
        textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
      ),
      home: inputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
