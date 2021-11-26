import 'package:flutter/material.dart';
import 'package:spotify_clone/src/atomic/hseparator.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';
import 'package:spotify_clone/src/mocked-data/newly_added_songs.dart';

class NewlyAddedSongCard extends StatelessWidget {
  const NewlyAddedSongCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: (Colors.grey[900]),
        child: Row(
          children: [
            Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    newlyAddedSongCover,
                  ),
                )),
            const HSeparator(size: 10),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    newlyAddedSongTitle,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const VSeparator(size: 8),
                  const Text(
                    newlyAddedSongDescription,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 3,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const VSeparator(size: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.favorite_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.play_circle_fill,
                          size: 30,
                          color: Colors.white,
                        )
                      ]),
                ],
              ),
            ),
            const HSeparator(size: 10)
          ],
        ));
  }
}
