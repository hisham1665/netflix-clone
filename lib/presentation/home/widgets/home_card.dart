import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class HomeCardSection extends StatelessWidget {
  const HomeCardSection({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(10, (index) {
                return Maincard(
                  imageurl:
                      "https://www.themoviedb.org/t/p/w1280/uOTDBabtxHA6szYKQNQe9Y7rFlv.jpg",
                );
              }),
            ],
          ),
        ),
        kHeight,
      ],
    );
  }
}
