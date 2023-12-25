import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_challenge_day_3/pages/HomePage.dart';
import 'package:ui_challenge_day_3/pages/StarterPage.dart';

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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home:StarterPage(),
    );
  }
}

