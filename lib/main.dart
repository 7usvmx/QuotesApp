// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:quotes/pages/quotes.dart';
import 'package:quotes/pages/welcom.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "تطبيق أحاديث",
      theme: ThemeData(),
      initialRoute: "/",
      routes: {
        "/": (context) => Wellcome(),
        "/quotes": (context) => Quotes(),
      },
    );
  }
}
