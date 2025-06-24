import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/links/urls.dart';

class HomeScreenTopBarWidget extends StatelessWidget {
  const HomeScreenTopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.black12,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.network(logoUrl, height: 50, width: 50),
              ),
              Spacer(),
              Icon(Icons.cast, color: KWhiteColor, size: 40),
              kwidth,
              Container(color: Colors.blue, width: 30, height: 30),
              kwidth,
            ],
          ),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextWidgetForTopBar(title: "TV Shows"),
              TextWidgetForTopBar(title: "Movies"),
              TextWidgetForTopBar(title: "Catagories"),
            ],
          ),
        ],
      ),
    );
  }
}

class TextWidgetForTopBar extends StatelessWidget {
  const TextWidgetForTopBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}
