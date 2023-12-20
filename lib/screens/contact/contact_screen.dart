// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight / 4, // ปรับความสูงให้พอดีสำหรับ Text
            width: double.infinity,
            color: Colors.blue,
            alignment: Alignment.center, // กำหนดการจัดวางตรงกลางของแกน x
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/doge.png"),
                    radius: 50, // ปรับขนาดของ CircleAvatar ตามที่ต้องการ
                  ),
                  Text(
                    "hello world",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: screenWidth * 0.9,
            child: Card(
              child: ListTile(
                title: Text('Two-line ListTile'),
                subtitle: Text('Here is a second line'),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: screenWidth * 0.6,
            color: Colors.amber,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.pink,
                        size: 24.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("ppv_tao@outlook.co.th"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.pink,
                        size: 24.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("0922971887"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.photo_filter_rounded,
                        color: Colors.pink,
                        size: 24.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("0922971887"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
