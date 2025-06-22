import 'package:flutter/material.dart';

class Maincard extends StatelessWidget {
  const Maincard({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageurl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
