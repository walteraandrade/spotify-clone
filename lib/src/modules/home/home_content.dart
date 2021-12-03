import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';
import 'package:spotify_clone/src/modules/home/greetings.dart';
import 'package:spotify_clone/src/modules/home/newly_added_songs.dart';
import 'package:spotify_clone/src/modules/home/recommendations_row.dart';

import 'home_page_grid.dart';

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
