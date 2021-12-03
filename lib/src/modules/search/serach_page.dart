import 'package:flutter/material.dart';
import 'package:spotify_clone/src/modules/search/search_page_layout.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPageLayout(),
      backgroundColor: Colors.black,
    );
  }
}

