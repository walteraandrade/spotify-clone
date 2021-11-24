import 'package:flutter/material.dart';
import 'package:spotify_clone/src/atomic/hseparator.dart';
import 'package:spotify_clone/src/mocked-data/newly_added_songs.dart';

import 'newly_added_song_card.dart';

class NewlyAddedSongs extends StatelessWidget {
  const NewlyAddedSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  newlyAddedSongArtistPicture,
                )),
            const HSeparator(size: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    newAddedSongSectionTitle,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  Text(
                    newlyAddedSongArtist,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        const NewlyAddedSongCard()
      ],
    );
  }
}
