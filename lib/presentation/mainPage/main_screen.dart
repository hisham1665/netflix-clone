import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/downloads/download_screen.dart';
import 'package:netflix_clone/presentation/fast_laugh/fast_laugh_screen.dart';
import 'package:netflix_clone/presentation/home/home_screen.dart';
import 'package:netflix_clone/presentation/mainPage/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/new&hot/new_and_hot_screen.dart';
import 'package:netflix_clone/presentation/search/search_screen.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    ScreenHomePage(),
    ScreenNewAndHot(),
    ScreenFastLaughPage(),
    ScreenSearchPage(),
    ScreenDownloadsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
