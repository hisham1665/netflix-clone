import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloadsPage extends StatelessWidget {
  ScreenDownloadsPage({super.key});
  final _widgetList = [_SmartDownloadWidget(), Section2(), Section3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: "Downloads"),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => SizedBox(height: 40),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    "https://www.themoviedb.org/t/p/w1280/uOTDBabtxHA6szYKQNQe9Y7rFlv.jpg",
    "https://www.themoviedb.org/t/p/w1280/il3ao5gcF6fZNqo1o9o7lusmEyU.jpg",
    "https://www.themoviedb.org/t/p/w1280/dfaZipN3Aw5BK85nEvfr2FNg4EW.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Introducing Downloads for You",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: KWhiteColor,
          ),
        ),
        kHeight,
        Text(
          "We will download a personalised selection \n of movies and shows for you, so there's \n always something to watch on your\n device.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(
          width: size.width,
          height: size.width * .8,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * .35,
                // ignore: deprecated_member_use
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadImageWidget(
                imageList: imageList[0],
                margin: EdgeInsets.only(right: 170, bottom: 20),
                angle: -25,
                size: Size(size.width * .35, size.width * .48),
              ),
              DownloadImageWidget(
                imageList: imageList[1],
                margin: EdgeInsets.only(left: 170, bottom: 20),
                angle: 25,
                size: Size(size.width * .35, size.width * .48),
              ),
              DownloadImageWidget(
                imageList: imageList[2],
                margin: EdgeInsets.only(top: 25),
                size: Size(size.width * .4, size.width * .55),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SmartDownloadWidget extends StatelessWidget {
  const _SmartDownloadWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.settings, color: KWhiteColor),
        kwidth,
        Text("Smart Downloads"),
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imageList),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: KButtonColorBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set Up",
                style: TextStyle(
                  fontSize: 20,
                  color: KWhiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          onPressed: () {},
          color: KButtonColorWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See What You Can Download",
              style: TextStyle(
                fontSize: 20,
                color: KColorBlack,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
