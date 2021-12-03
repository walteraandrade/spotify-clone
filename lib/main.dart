import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:spotify_clone/src/modules/home/bottom_tabs.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomTabs(),
    );
  }
}
