import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottumContainer extends StatelessWidget {
  Color bg;
  String label;
  String image;
   BottumContainer({required this.bg,required this.label,required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 151,
      height: 56,
      decoration:BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(image,height: 24,width: 24),
          SizedBox(
            width: 5,
          ),
          Text(label,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xff000000)
          ),)
        ],
      ),


    );
  }
}
