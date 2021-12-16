import 'package:flutter/material.dart';
import 'package:spotify_clone/src/modules/search/search_section.dart';

class SearchSectionCard extends StatelessWidget {
  const SearchSectionCard({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 100,
        decoration: const BoxDecoration(color: Colors.red),
        child: Stack(
          children: [
            Positioned(
              height: boxSize,
              child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ),
            Positioned(
              top: 50,
              left: 90,
              child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(40 / 360),
                  child: Image.network(
                    image,
                    height: 80,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
