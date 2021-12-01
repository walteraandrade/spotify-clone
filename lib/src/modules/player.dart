import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotify_clone/src/atomic/hseparator.dart';
import 'package:spotify_clone/src/mocked-data/player_data.dart';

class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: (Colors.red[900]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Expanded(
                flex: 1,
                child: Image.network(
                  playerSongCover,
                  height: 40,
                )),
            const HSeparator(size: 10),
            const Expanded(
              flex: 5,
              child: Text(playyerSongTitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
            ),
            const Expanded(
                flex: 1,
                child: Icon(
                  Icons.headphones,
                  size: 25,
                  color: Colors.white,
                )),
            const Expanded(
                flex: 1,
                child: Icon(
                  Icons.favorite,
                  size: 25,
                  color: Colors.white,
                )),
            const Expanded(
                flex: 1,
                child: Icon(
                  Icons.pause,
                  size: 25,
                  color: Colors.white,
                ))
          ]),
        ));
  }
}

final playerProvier = Provider((_) => const Player());

class PlayerProvider extends ConsumerWidget {
  const PlayerProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Player player = ref.watch(playerProvier);
    return Positioned(
      child: player,
      bottom: 10,
      left: 2,
      right: 2,
    );
  }
}
