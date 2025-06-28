import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key, this.fontSize = 18});
  final double fontSize ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ThunderBolt",
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: KWhiteColor,
          ),
        ),
        kHeight,
        Text(
          "After finding themselves ensnared in a death trap, seven disillusioned castoffs must embark on a dangerous mission that will force them to confront the darkest corners of their pasts.",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
