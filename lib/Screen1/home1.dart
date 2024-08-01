import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home1 extends StatelessWidget {
  static const String routeName = "screen";
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset("assets/screen1/images/Logo.png"),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset("assets/screen1/images/Setting.png"),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 30),
                  child: Row(
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff010104)),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4838D1)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 25),
                  child: ButtonsTabBar(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey,
                    ),
                    contentCenter: true,
                    labelStyle: GoogleFonts.poppins(
                      color: Color(0xff2E2E5D),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    unselectedLabelStyle: GoogleFonts.poppins(
                      color: Color(0xff2E2E5D),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    tabs: [
                      Tab(child: Text("Art")),
                      Tab(child: Text("Business")),
                      Tab(child: Text("Comedy")),
                      Tab(child: Text("Drama")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommended For You",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff010104)),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4838D1)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset("assets/screen1/images/postter1.png",
                            width: 200, height: 300),
                        SizedBox(width: 20),
                        Image.asset("assets/screen1/images/postter2.png",
                            width: 200, height: 300),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Recommended For You",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff010104)),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4838D1)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 144,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 290,
                        decoration: BoxDecoration(
                            color: Color(0xffc5befa),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/screen1/images/postter3.png",
                                height: 150, width: 150),
                            SizedBox(width: 5),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Light Mage",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff010104),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Laurie Forest",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff6A6A8B),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 290,
                        decoration: BoxDecoration(
                            color: Color(0xffc5befa),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/screen1/images/postter3.png",
                                height: 150, width: 150),
                            SizedBox(width: 5),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Light Mage",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff010104),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Laurie Forest",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff6A6A8B),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/screen1/images/Home.png"),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/screen1/images/Search.png"),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/screen1/images/Document.png"),
                label: "Library"),
          ],

        ),
      ),
    );
  }
}
