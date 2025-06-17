import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(Icons.cast, color: KWhiteColor, size: 30),
        kwidth,
        Container(color: Colors.blue, width: 25, height: 25),
        kwidth,
      ],
    );
  }
}
