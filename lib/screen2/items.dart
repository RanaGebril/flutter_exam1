import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollingItems extends StatelessWidget {
  const ScrollingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffECFDF3),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Positive vibes",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w200,
                    fontSize: 18,
                    color: Color(0xff344054)
                  )
                    ,),
                  Text('''Boost your mood with \npositive vibes''',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff344054)
                    )
                    ,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/screen2/images/Button.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("10 mins",
                        style: GoogleFonts.inter(
                          color: Color(0xff000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),)
                      ],

                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset("assets/screen2/images/Walking the Dog.png",
            width: 82,
            )

          ],
        ),
      ),
    );
  }
}
