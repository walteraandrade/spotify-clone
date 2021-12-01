import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotify_clone/src/modules/greetings.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';
import 'package:spotify_clone/src/modules/newly_added_songs.dart';
import 'package:spotify_clone/src/modules/player.dart';

import 'src/modules/recommendations_row.dart';
import 'package:flutter/material.dart';
import 'src/modules/home_page_grid.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeLayout(),
    );
  }
}

class HomeContent extends HookConsumerWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
        child: Stack(
      children: [
        Column(
          children: const <Widget>[
            VSeparator(size: 60),
            GreetingsSection(),
            HomePageGrid(),
            VSeparator(size: 40),
            NewlyAddedSongs(),
            VSeparator(size: 40),
            RecommendationsRow(),
            VSeparator(size: 40),
          ],
        ),
      ],
    ));
  }
}

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key, Player? player}) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    gradient: RadialGradient(
                        center: Alignment(-1, -1),
                        radius: 1,
                        colors: [Colors.red, Colors.black])),
                child: const HomeContent()),
            const PlayerProvider()
          ],
        ),
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
          currentIndex: 0,
        ));
  }
}
