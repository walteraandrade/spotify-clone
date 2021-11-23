import 'package:flutter/material.dart';
import 'package:spotify_clone/models/album.model.dart';
import 'package:spotify_clone/src/horizontal_card.dart';

class HorizontalCardList extends StatelessWidget {
  const HorizontalCardList({Key? key, required this.albums}) : super(key: key);

  final List<Album> albums;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: albums.length,
        itemBuilder: (BuildContext context, int index) {
          return HorizontalCard(album: albums[index]);
        });
  }
}
