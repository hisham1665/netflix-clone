import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class VideoFastLaughWidget extends StatelessWidget {
  const VideoFastLaughWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // left button
                CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color.fromARGB(241, 74, 74, 74),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_off_rounded, color: KWhiteColor),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w1280/uOTDBabtxHA6szYKQNQe9Y7rFlv.jpg",
                        ),
                      ),
                    ),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: "LOL"),
                    VideoActionWidget(icon: Icons.add, title: "My List"),
                    VideoActionWidget(icon: Icons.share, title: "Share"),
                    VideoActionWidget(icon: Icons.play_arrow, title: "Play"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Icon(icon, color: KWhiteColor, size: 30),
          Text(title, style: const TextStyle(color: KWhiteColor, fontSize: 16)),
        ],
      ),
    );
  }
}
