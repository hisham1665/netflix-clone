import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class HomeSpeacialCardWidget extends StatelessWidget {
  const HomeSpeacialCardWidget({
    super.key,
    required this.imageurl,
    required this.index,
  });
  final String imageurl;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 40, height: 200),
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageurl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ],
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: BorderedText(
            strokeWidth: 3.0,
            strokeColor: KWhiteColor,
            child: Text(
              "$index ",
              style: TextStyle(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontSize: 120,
                decoration: TextDecoration.none,
                color: KColorBlack,
                fontWeight: FontWeight.bold,
                //   decorationColor: KWhiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
