import 'package:flutter/material.dart';

class HSeparator extends StatelessWidget {
  const HSeparator({Key? key, required this.size}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}
