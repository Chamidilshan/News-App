import 'package:flutter/material.dart';
import 'package:news_app/screens/discover_screen.dart';
import 'package:news_app/screens/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(left: 50.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: const Icon(Icons.home),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, DiscoverScreen.routeName);
            },
            icon: const Icon(Icons.search),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(right: 50.0),
            child: IconButton(
              onPressed: () {
                print('no profile screens yet');
              },
              icon: const Icon(Icons.person),
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}