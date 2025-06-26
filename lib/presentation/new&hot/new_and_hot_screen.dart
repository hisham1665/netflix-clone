import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/comming_soon.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/everyones_watching.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBarWidget(title: "New & Hot"),
        ),

        body: TabBarView(
          children: [CommingSoonWidget(), EveryonesWatchingWidget(),],
        ),
      ),
    );
  }
}
