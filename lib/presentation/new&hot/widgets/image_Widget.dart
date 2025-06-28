// ignore: file_names
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class ImageWidgetForNewHot extends StatelessWidget {
  const ImageWidgetForNewHot({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(image, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: const Color.fromARGB(184, 74, 74, 74),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.volume_off_rounded, color: KWhiteColor),
              iconSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
