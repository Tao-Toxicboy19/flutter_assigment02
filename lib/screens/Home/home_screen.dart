// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_assigment02/screens/contact/contact_screen.dart';
import 'package:flutter_assigment02/screens/product/product_screen.dart';
import 'package:flutter_assigment02/widget/card/card.dart';
import 'package:flutter_assigment02/widget/seachText/seach_text.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Prayut",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
        backgroundColor: Colors.amber.shade500,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
          // Your widgets for the home page...
          Column(
            children: [
              SearchTextFieldExample(),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Cards(),
              ),
            ],
          ),
          ProductPage(),
          ContactPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_calendar_sharp),
            label: "",
          ),
        ],
        onTap: (int index) {
          pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
