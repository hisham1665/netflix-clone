import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/links/urls.dart';
import 'package:netflix_clone/presentation/home/widgets/hero_section.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/description_widget.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/image_Widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext ctx, index) => EveryOnesContentWidget(),
      itemCount: 10,
    );
  }
}

class EveryOnesContentWidget extends StatelessWidget {
  const EveryOnesContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        DescriptionWidget(fontSize: 20),
        kHeight50,
        ImageWidgetForNewHot(image: horizontlImage2),
        kHeight30,
        Row(
          children: [
            Text(
              "ThunderBolt",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: KWhiteColor,
              ),
            ),
            Spacer(),
            BottomSupportIconWidget(
              icon: Icons.share,
              title: "Share",
              size: 30,
              fontsize: 11,
              color: Colors.grey,
            ),
            kwidth,
            BottomSupportIconWidget(
              icon: Icons.add,
              title: "My List",
              size: 30,
              fontsize: 11,
              color: Colors.grey,
            ),
            kwidth,
            BottomSupportIconWidget(
              icon: Icons.play_arrow,
              title: "Play",
              size: 30,
              fontsize: 11,
              color: Colors.grey,
            ),
            kwidth,
          ],
        ),
        kHeight30,
      ],
    );
  }
}
