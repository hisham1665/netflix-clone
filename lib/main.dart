import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/mainPage/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: backGroundColor,
      ),
      home: ScreenMainPage(),
    );
  }
}
