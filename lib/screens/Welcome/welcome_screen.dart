// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_assigment02/screens/Home/home_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ContactPage(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/hero.jpg"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.amber.shade600,
              // Change this color to the desired one
            ),
            child: Text(
              "Get Started",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
