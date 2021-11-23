import 'package:spotify_clone/src/greetings.dart';
import 'package:spotify_clone/src/vseparator.dart';

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
            body: Column(
              children: <Widget>[
                const VSeparator(size: 60),
                const GreetingsSection(),
                const HomePageGrid(),
                Container(
                    height: 150,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: const TextSpan(
                                text: ('Recently played'),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                        ),
                        const SizedBox(
                          child: RecommendationsRow(),
                          height: 108,
                        )
                      ],
                    ))
              ],
            )));
  }
}
