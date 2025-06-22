import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MainTitle(title: "Released In This Year"),
          Maincard(
            imageurl:
                "https://www.themoviedb.org/t/p/w1280/uOTDBabtxHA6szYKQNQe9Y7rFlv.jpg",
          ),
        ],
      ),
    );
  }
}
