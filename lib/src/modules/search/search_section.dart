import 'package:flutter/material.dart';

const double boxRadius = 8;
const double boxSize = 100;

class SearchSection extends StatelessWidget {
  const SearchSection(
      {Key? key,
      required this.title,
      required this.cardImage,
      required this.cardTitle})
      : super(key: key);

  final String title;
  final String cardTitle;
  final String cardImage;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
