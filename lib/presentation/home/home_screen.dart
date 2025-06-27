import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/hero_section.dart';
import 'package:netflix_clone/presentation/home/widgets/home_card.dart';
import 'package:netflix_clone/presentation/home/widgets/home_top_bar.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, bool isScrolled, Widget? _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection dir = notification.direction;
              if (dir == ScrollDirection.reverse) {
                scrollNotifier.value = true;
              } else if (dir == ScrollDirection.forward) {
                scrollNotifier.value = false;
              }
              return false;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    HeroSectionWidget(),
                    HomeCardSection(title: "Released In The Past Year"),
                    HomeCardSection(title: "Trending Now"),
                    NumberCardWidget(),
                    HomeCardSection(title: "Selecting For You"),
                    HomeCardSection(title: "Tense Dramas"),
                    HomeCardSection(title: "South Indian Cinema"),
                    HomeCardSection(title: "Suspensful Movies"),
                  ],
                ),
                scrollNotifier.value == false
                    ? HomeScreenTopBarWidget()
                    : kHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}
