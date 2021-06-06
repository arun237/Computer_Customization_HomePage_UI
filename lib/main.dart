// @dart=2.9
import 'package:computer_customization_homepage_ui/HomePage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new Home());
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Users())));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'SYSTEMS',
        style: TextStyle(
            fontFamily: 'made',
            fontSize: 35,
            fontWeight: FontWeight.w600,
            color: Colors.orange),
      ),
    );
  }
}
