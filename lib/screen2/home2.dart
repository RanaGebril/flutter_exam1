import 'package:exam/screen2/Rating.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class Home2 extends StatelessWidget {
  static const String routeName = "screen2";
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset("assets/screen2/images/logo.png"),
        ),
        titleSpacing: 5,
        title: Text(
          "Moody",
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: badges.Badge(
              position: badges.BadgePosition.bottomEnd(bottom: 8, end: 1),
              badgeContent: Text(''),
              badgeStyle: badges.BadgeStyle(
                badgeColor: Color(0xffF04438),
              ),
              child: Image.asset("assets/screen2/images/bell.png",
                  width: 25, height: 30),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xff371B34),
                    ),
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff371B34),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "How are you feeling today?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff371B34),
                ),
              ),
            ),
            SizedBox(
              //height: 100,
              child: Row(
                children: [
                  Expanded(child: Rating(image: "assets/screen2/images/love.png", label: "Love")),
                  Expanded(child: Rating(image: "assets/screen2/images/cool.png", label: "Cool")),
                  Expanded(child: Rating(image: "assets/screen2/images/happy.png", label: "Happy")),
                  Expanded(child: Rating(image: "assets/screen2/images/sad.png", label: "Sad"))
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
