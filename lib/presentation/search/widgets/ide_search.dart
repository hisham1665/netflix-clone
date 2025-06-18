import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

const imageUrl =
    "https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/mQJVtl7SYjNLwjsUZZsITmAxtdU.jpg";

class IdleSearchWidget extends StatelessWidget {
  const IdleSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleBarWidget(title: "Top Searches"),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => TopSearchWidget(),
            separatorBuilder: (ctx, index) => kHeight20,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchWidget extends StatelessWidget {
  const TopSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: ScreenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(
            "Cobra Kai",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: KWhiteColor,
            ),
          ),
        ),

        Icon(CupertinoIcons.play_circle, color: KWhiteColor, size: 40),
      ],
    );
  }
}
