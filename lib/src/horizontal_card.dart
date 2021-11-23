import 'package:flutter/material.dart';
import 'package:spotify_clone/models/album.model.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({Key? key, required this.album}) : super(key: key);

  final Album album;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: (Colors.grey[900]),
      child: Row(
        children: [
          Image.asset(
            album.image,
            height: 50,
            width: 50,
          ),
          Expanded(
            child: Text(
              album.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white),
              softWrap: false,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}

final List<Album> albumlist = [
  const Album(image: 'images/marley_exodus.jpeg', title: 'Exodus'),
  const Album(image: 'images/heynes_lsd.jpeg', title: 'Lake Shore Drive'),
  const Album(image: 'images/leprous_aphelion.jpeg', title: 'Aphelion'),
  const Album(image: 'images/string_tst.jpeg', title: 'Ten Summoner\'s Tales'),
  const Album(image: 'images/mitchell_hejira.jpeg', title: 'Hejira'),
  const Album(image: 'images/snarky_fd.jpeg', title: 'Family Dinner, vol 2')
];
