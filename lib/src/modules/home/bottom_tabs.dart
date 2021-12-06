import 'package:flutter/material.dart';
import 'package:spotify_clone/src/modules/home/home_layout.dart';
import 'package:spotify_clone/src/modules/login-form/login_layout.dart';
import 'package:spotify_clone/src/modules/player/player.dart';
import 'package:spotify_clone/src/modules/search/serach_page.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({Key? key, Player? player}) : super(key: key);

  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int _selectedIndex = 0;

  final List<Widget> _bottomTabWidgets = [
    const HomeLayout(),
    const SearchPage(),
    const LoginLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _bottomTabWidgets[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), label: 'Your library'),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
