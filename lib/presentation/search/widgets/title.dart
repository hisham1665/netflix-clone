import 'package:flutter/material.dart';

class SearchTitleBarWidget extends StatelessWidget {
  const SearchTitleBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
