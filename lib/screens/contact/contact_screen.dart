// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String bgUrl =
        "https://scontent.fbkk9-2.fna.fbcdn.net/v/t39.30808-6/335222763_168330922719509_3532252288224746336_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeGnP8YXs2t5aDt1M4OnAZgkYLgS-pyLlapguBL6nIuVqp9OO2XGplMKcrQMdfZMtkyMfXdBbahw7H-73vVM39Wm&_nc_ohc=wcaSXGM_j54AX8gQjNj&_nc_ht=scontent.fbkk9-2.fna&oh=00_AfChPv35IxILJhWlrYfb0Rjd_-toLS-y2YIMBxX1fh06Rg&oe=65873224";
    String profileUrl =
        "https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/344568860_761593092418229_8900964434983411857_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeGzOkScmb1Key3qotXEMGAooPBqBk7r47mg8GoGTuvjuelkPvg-zk7sdDxlOJlfoP8oFPn8Mcdn0fekyBflde7K&_nc_ohc=EBJjpyhpIbMAX_Pet9F&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfCRA_i2qpwsywvaBg2oQy3TcULzkTfof3pWfGyG1DcvqA&oe=65879B30";
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight / 4, // ปรับความสูงให้พอดีสำหรับ Text
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(bgUrl),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center, // กำหนดการจัดวางตรงกลางของแกน x
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(profileUrl),
                    radius: 50, // ปรับขนาดของ CircleAvatar ตามที่ต้องการ
                  ),
                  Text(
                    "John onyx",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).colorScheme.onTertiary),
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
                title: Text('Computer engineering'),
                subtitle: Text('Faculty of Engineering'),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: screenWidth * 0.8,
            // color: Colors.amber,
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
                        child: Text(
                          "ppv_tao@outlook.co.th",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        child: Text(
                          "0922971887",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.layers,
                        color: Colors.pink,
                        size: 24.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "MREN Stack",
                          style: TextStyle(fontSize: 16),
                        ),
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
