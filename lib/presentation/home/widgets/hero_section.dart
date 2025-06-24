import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class HeroSectionWidget extends StatelessWidget {
  const HeroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 650,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w1280/w9zuf61TtLNBUX0cVookPJIN0eK.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 650,
              color: Colors.black12,
            ),
          ],
        ),
        BottomButtonsWidget(),
      ],
    );
  }
}

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomSupportIconWidget(icon: Icons.add, title: 'My List'),
          _PlayButtonWidget(),
          BottomSupportIconWidget(icon: Icons.info, title: 'Info'),
        ],
      ),
    );
  }
}

class BottomSupportIconWidget extends StatelessWidget {
  const BottomSupportIconWidget({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: KWhiteColor, size: 30),
        Text(title, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}

class _PlayButtonWidget extends StatelessWidget {
  const _PlayButtonWidget();

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Text("Play"),
      ),
      icon: Icon(Icons.play_arrow),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(KWhiteColor),
        iconColor: WidgetStateProperty.all(KColorBlack),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        textStyle: WidgetStateProperty.all(
          TextStyle(color: KColorBlack, fontSize: 20),
        ),
        iconSize: WidgetStatePropertyAll(25),
      ),
    );
  }
}
