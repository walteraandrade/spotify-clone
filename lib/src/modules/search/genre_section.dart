import 'package:flutter/material.dart';
import 'package:spotify_clone/src/mocked-data/search_page_images.dart';
import 'package:spotify_clone/src/modules/search/search_section_card.dart';

class GenreSection extends StatelessWidget {
  const GenreSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Expanded(
          child: SearchSectionCard(
            title: 'Rock',
            image: rockImage,
          ),
        ),
        Expanded(
          child: SearchSectionCard(
            title: 'Rap',
            image: rapImage,
          ),
        )
      ],
    );
  }
}
