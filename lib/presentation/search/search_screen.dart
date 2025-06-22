import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/result_search.dart';

class ScreenSearchPage extends StatelessWidget {
  const ScreenSearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: TextStyle(color: Colors.white),
                backgroundColor: Colors.grey[800],
              ),
              kHeight20,
              //Expanded(child: IdleSearchWidget()),
              Expanded(child: ResultSearchPageWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
