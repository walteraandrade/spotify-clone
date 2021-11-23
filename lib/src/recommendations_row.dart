import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';

import 'atomic/big_card.dart';
import 'mocked-data/recently_played.dart';

class RecommendationsRow extends StatelessWidget {
  const RecommendationsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      const VSeparator(size: 20),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recentlyPlayed
                .map((recommendedAlbum) => BigCard(album: recommendedAlbum))
                .toList(),
          ))
    ]);
  }
}
