import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/links/urls.dart';
import 'package:netflix_clone/presentation/home/widgets/hero_section.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/description_widget.dart';
import 'package:netflix_clone/presentation/new&hot/widgets/image_Widget.dart';



class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext ctx, int index) => CommingSoonContent(),
    );
  }
}

class CommingSoonContent extends StatelessWidget {
  const CommingSoonContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        kHeight20,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 500,
              child: Column(
                children: [
                  Text(
                    "FEB",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                      fontSize: 25,
                      color: KWhiteColor,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              width: size.width - 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageWidgetForNewHot(image: horizontalImage,),
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
                        icon: Icons.notifications_none,
                        title: "Remind me",
                        size: 30,
                        fontsize: 11,
                        color: Colors.grey,
                      ),
                      kwidth,
                      BottomSupportIconWidget(
                        icon: Icons.info_outline,
                        title: "Info",
                        size: 30,
                        fontsize: 11,
                        color: Colors.grey,
                      ),
                      kwidth,
                    ],
                  ),
                  kHeight,
                  Text(
                    "Comming on Friday",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.network(logoUrl),
                        ),
                        Text(
                          "FILM ",
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  DescriptionWidget()
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

