
import 'package:flutter/material.dart';

import 'card/card_page.dart';
import 'analysis/analytics_page.dart';
import 'home/home_page.dart';
import 'profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int itemSelectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CardPage(),
    HistoryPage(),
    ProfilePage(),
  ];
  
  void onItemSelected(int index) {
    setState(() {
      itemSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[itemSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: itemSelectedIndex,
          onTap: onItemSelected,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card_outlined),
                activeIcon: Icon(Icons.credit_card),
                label: 'Card'),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics_outlined),
                activeIcon: Icon(Icons.analytics),
                label: "History"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: "Profile"),
          ]),
    );
  }
}