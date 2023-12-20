// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_assigment02/screens/Welcome/welcome_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: WelcomePage(),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
      ),
    );
  }
}
