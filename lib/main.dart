import 'package:spotify_clone/src/modules/greetings.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';
import 'package:spotify_clone/src/modules/newly_added_songs.dart';
import 'package:spotify_clone/src/modules/player.dart';

import 'src/modules/recommendations_row.dart';
import 'package:flutter/material.dart';
import 'src/modules/home_page_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    center: Alignment(-1, -1),
                    colors: [Colors.grey, Colors.black])),
            child: const HomeContent()),
        const Positioned(
          child: Player(),
          bottom: 20,
          left: 10,
          right: 10,
        )
      ],
    )));
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
