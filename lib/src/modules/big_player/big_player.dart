import 'package:flutter/material.dart';
import 'package:spotify_clone/models/album.model.dart';

class BigPlayer extends StatelessWidget {
  const BigPlayer({Key? key, required this.album}) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(album.image)));
  }
}
