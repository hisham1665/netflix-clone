import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/fast_laugh_video.dart';

class ScreenFastLaughPage extends StatelessWidget {
  const ScreenFastLaughPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          children: [
            ...List.generate(10, (index) => VideoFastLaughWidget(index: index)),
          ],
        ),
      ),
    );
  }
}
