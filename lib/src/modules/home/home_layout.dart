import 'package:flutter/material.dart';
import 'package:spotify_clone/src/modules/home/home_content.dart';

import 'package:spotify_clone/src/modules/player/player.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
