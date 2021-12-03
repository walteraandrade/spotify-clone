import 'package:flutter/material.dart';
import 'package:spotify_clone/src/atomic/hseparator.dart';
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
        width: 160,
        height: 100,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(boxRadius)),
            color: Colors.red),
        child: Row(
          children: [
            SizedBox(
              child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
              height: boxSize,
            ),
            const HSeparator(size: 60),
            SizedBox(
              child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(25 / 360),
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
