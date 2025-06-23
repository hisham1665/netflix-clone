import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widgets/home_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeCardSection(title: "Released In The Past Year"),
              HomeCardSection(title: "Trending Now"),
              NumberCardWidget(),
              HomeCardSection(title: "Tense Dramas"),
              HomeCardSection(title: "South Indian Cinema"),
            ],
          ),
        ),
      ),
    );
  }
}
