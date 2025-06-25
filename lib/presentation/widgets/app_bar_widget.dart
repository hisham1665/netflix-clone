import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: KWhiteColor,
        ),
      ),
      actions: [
        Icon(Icons.cast, color: KWhiteColor, size: 40),
        kwidth,
        Container(color: Colors.blue, width: 30, height: 30),
        kwidth,
      ],
      bottom: BottomBarWidgetNew(title: title),
    );
  }
}

class BottomBarWidgetNew extends StatelessWidget
    implements PreferredSizeWidget {
  const BottomBarWidgetNew({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    if (title == "New & Hot") {
      return TabBar(
        labelColor: KColorBlack,
        dividerColor: Colors.transparent,
        isScrollable: true,
        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        unselectedLabelColor: KWhiteColor,
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: EdgeInsets.symmetric(horizontal: 10),
        indicator: BoxDecoration(
          color: KWhiteColor,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.only(bottom: 5),
        tabs: const [
          Tab(text: "🍿 Coming Soon"),
          Tab(text: "👀 EveryOne's Wacthing"),
        ],
      );
    } else {
      return SizedBox(height: 0);
    }
  }

  @override
  Size get preferredSize {
    if (title == "New & Hot") {
      return const Size.fromHeight(kToolbarHeight);
    } else {
      return const Size.fromHeight(0);
    }
  }
}

   /* return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.cast, color: KWhiteColor, size: 40),
          kwidth,
          Container(color: Colors.blue, width: 30, height: 30),
          kwidth,
        ],
      ),
    );*/