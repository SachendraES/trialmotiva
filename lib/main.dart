import 'package:flutter/material.dart';
import 'package:motiva8/getstarted.dart';
import 'package:motiva8/inputpage.dart';
import 'package:motiva8/signinpage.dart';
import 'package:motiva8/nicknamepage.dart';

//imported material design package
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xfff4f4f4), body: getstarted()));
  }
}
