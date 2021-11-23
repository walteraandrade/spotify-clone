import 'package:spotify_clone/src/greetings.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';

import 'src/recommendations_row.dart';
import 'package:flutter/material.dart';
import 'src/home_page_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
                decoration: const BoxDecoration(
                    gradient: RadialGradient(
                        center: Alignment(-1, -1),
                        colors: [Colors.grey, Colors.black])),
                child: Column(
                  children: const <Widget>[
                    VSeparator(size: 60),
                    GreetingsSection(),
                    HomePageGrid(),
                    RecommendationsRow()
                  ],
                ))));
  }
}
