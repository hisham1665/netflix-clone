import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

final imageUrl =
    "https://www.themoviedb.org/t/p/w1280/uOTDBabtxHA6szYKQNQe9Y7rFlv.jpg";

class ResultSearchPageWidget extends StatelessWidget {
  const ResultSearchPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleBarWidget(title: "Movies & TV"),
        kHeight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            shrinkWrap: true,
            children: List.generate(20, (index) => Maincard()),
          ),
        ),
      ],
    );
  }
}

class Maincard extends StatelessWidget {
  const Maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
