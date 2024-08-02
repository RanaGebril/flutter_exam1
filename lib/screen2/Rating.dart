import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final String image;
  final String label;

  Rating({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xffE4E7EC),
              radius: 30,
              child: Image.asset(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
