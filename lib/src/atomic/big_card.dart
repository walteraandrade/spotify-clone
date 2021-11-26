import 'package:flutter/material.dart';
import 'package:spotify_clone/models/album.model.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';

class BigCard extends StatelessWidget {
  const BigCard({Key? key, required this.album}) : super(key: key);

  final Album album;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 160,
        child: Column(
          children: [
            Image.network(
              album.image,
              height: 150,
              fit: BoxFit.contain,
            ),
            const VSeparator(size: 10),
            Text(
              album.title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
