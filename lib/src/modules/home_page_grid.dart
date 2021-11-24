import 'package:flutter/material.dart';
import 'package:spotify_clone/src/atomic/horizontal_card.dart';

import '../mocked-data/album_list.dart';

class HomePageGrid extends StatelessWidget {
  const HomePageGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 3,
        shrinkWrap: true,
        children:
            albumlist.map((album) => HorizontalCard(album: album)).toList());
  }
}
