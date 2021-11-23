import 'package:flutter/material.dart';
import 'package:spotify_clone/models/album.model.dart';
import 'package:spotify_clone/src/atomic/hseparator.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({Key? key, required this.album}) : super(key: key);

  final Album album;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: (Colors.grey[900]),
      child: Row(
        children: [
          Image.asset(
            album.image,
            fit: BoxFit.contain,
          ),
          const HSeparator(size: 10),
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
