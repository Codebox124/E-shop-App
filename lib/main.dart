import 'package:e_shop/screens/home.dart';
import 'package:e_shop/screens/intro_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,
      title: "E-commerceApp",
    );
  }
}
