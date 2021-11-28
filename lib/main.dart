import 'package:flutter_hooks/flutter_hooks.dart';
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

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Player player = ref.watch(playerProvier);
    return const MaterialApp(
      home: HomeLayout(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          VSeparator(size: 60),
          GreetingsSection(),
          HomePageGrid(),
          NewlyAddedSongs(),
          VSeparator(size: 40),
          RecommendationsRow(),
          VSeparator(size: 40),
        ],
      ),
    );
  }
}

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

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
                      colors: [Colors.grey, Colors.black])),
              child: const HomeContent()),
          Positioned(
            child: player,
            bottom: 20,
            left: 10,
            right: 10,
          )
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(icon: Icons.home, label: 'Home'),
        const BottomNavigationBarItem(icon: Icons.search, label: 'Search'),
        const BottomNavigationBarItem(
            icon: Icons.local_library, label: 'Your library'),
      ], currentIndex: 0, selectedItemColor: Colors.amber[700]),
    );
  }
}
