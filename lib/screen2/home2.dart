import 'package:exam/screen2/Rating.dart';
import 'package:exam/screen2/bottum_container.dart';
import 'package:exam/screen2/items.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class Home2 extends StatefulWidget {
  static const String routeName = "screen2";
  Home2({super.key});


  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int _current = 0;
  CarouselController _controller = CarouselController();

  List<ScrollingItems> items = [
    ScrollingItems(),
    ScrollingItems(),
    ScrollingItems(),

  ];

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
          style: TextStyle(
            fontFamily: "Kefa",
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
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
              child: Image.asset(
                "assets/screen2/images/bell.png",
                width: 25,
                height: 30,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Text(
                      "Hello, ",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0xff371B34),
                      ),
                    ),
                    Text(
                      "Sara Rose",
                      style: GoogleFonts.inter(
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
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff371B34),
                  ),
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                        child: Rating(
                            image: "assets/screen2/images/love.png",
                            label: "Love")),
                    Expanded(
                        child: Rating(
                            image: "assets/screen2/images/cool.png",
                            label: "Cool")),
                    Expanded(
                        child: Rating(
                            image: "assets/screen2/images/happy.png",
                            label: "Happy")),
                    Expanded(
                        child: Rating(
                            image: "assets/screen2/images/sad.png",
                            label: "Sad")),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                      fontFamily: "SemiBold",
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See more",
                    style: TextStyle(
                      color: Color(0xff027A48),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: "SemiBold",
                    ),
                  ),
                  ImageIcon(AssetImage("assets/screen2/images/Icon.png"))
                ],
              ),
              CarouselSlider(
                items: items,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 6,
                      height: 6,
                      margin:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Color(0xff737171))
                            .withOpacity(_current == entry.key ? 0.9 : 0.4),
                      ),
                    ),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Text(
                      "Exercise",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000),
                        fontFamily: "SemiBold",
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See more",
                      style: TextStyle(
                        color: Color(0xff027A48),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: "SemiBold",
                      ),
                    ),
                    ImageIcon(AssetImage("assets/screen2/images/Icon.png"))
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(child: BottumContainer(label: "Relaxation", image: "assets/screen2/images/Relaxation.png", bg: Color(0xffF9F5FF))),
                  SizedBox(width: 20),
                  Expanded(child: BottumContainer(label: "Meditation", image: "assets/screen2/images/Meditation.png", bg: Color(0xffFDF2FA)))
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(child: BottumContainer(label: "Breathing", image: "assets/screen2/images/Breathing.png", bg: Color(0xffFFFAF5))),
                  SizedBox(width: 20),
                  Expanded(child: BottumContainer(label: "Yoga", image: "assets/screen2/images/Yoga.png", bg: Color(0xffF0F9FF)))
                ],
              )

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Image.asset("assets/screen2/images/home2.png"),label: "Home"),
        BottomNavigationBarItem(icon: Image.asset("assets/screen2/images/grid.png"),label: "Grid"),
        BottomNavigationBarItem(icon: Image.asset("assets/screen2/images/calender.png"),label: "Calender"),
        BottomNavigationBarItem(icon: Image.asset("assets/screen2/images/user.png"),label: "User"),
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,

      ),

    );
  }
}
