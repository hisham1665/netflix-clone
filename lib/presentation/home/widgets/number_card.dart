import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/home_speacial_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class NumberCardWidget extends StatelessWidget {
  const NumberCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 TV Shows In India Today"),
        kHeight,
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(10, (index) {
                return HomeSpeacialCardWidget(
                  imageurl:
                      "https://www.themoviedb.org/t/p/w1280/il3ao5gcF6fZNqo1o9o7lusmEyU.jpg",
                  index: index + 1,
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
