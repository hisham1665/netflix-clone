import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'new & hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions),
              label: 'fast laugh',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
