import 'package:flutter/material.dart';
import 'package:spotify_clone/src/atomic/text_field.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';
import 'package:spotify_clone/src/mocked-data/search_page_images.dart';
import 'package:spotify_clone/src/modules/search/genre_section.dart';

class SearchPageLayout extends StatelessWidget {
  const SearchPageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SafeArea(
              child: Row(children: const [
                Text(
                  'Search',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            const VSeparator(size: 40),
            const TaqTextField(),
            const VSeparator(size: 20),
            Image.network(yearWrappedImage),
            const VSeparator(size: 20),
            const GenreSection()
          ],
        ));
  }
}
