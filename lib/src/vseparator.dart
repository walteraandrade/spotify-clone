import 'package:flutter/material.dart';

class VSeparator extends StatelessWidget {
  const VSeparator({Key? key, required this.size}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}
