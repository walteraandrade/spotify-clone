import 'package:flutter/material.dart';
import 'package:spotify_clone/models/album.model.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';
import 'package:spotify_clone/src/modules/big_player/big_player_control.dart';

class BigPlayer extends StatelessWidget {
  const BigPlayer({Key? key, required this.album}) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const VSeparator(size: 100),
                Image.asset(album.image),
                BigPlayerControl(album: album)
              ],
            )));
  }
}
