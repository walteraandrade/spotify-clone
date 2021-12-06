import 'package:beamer/beamer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotify_clone/models/album.model.dart';
import 'package:spotify_clone/src/modules/big_player/big_player.dart';
import 'package:spotify_clone/src/modules/home/bottom_tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routerDelegate = BeamerDelegate(
      locationBuilder: RoutesLocationBuilder(routes: {
    '/': (context, state, data) => const BottomTabs(),
    '/:albumId': (context, state, data) {
      final albumId = state.pathParameters['albumId']!;
      final album = data as Album;

      return BeamPage(
          key: ValueKey('album-$albumId'),
          title: album.title,
          popToNamed: '/',
          type: BeamPageType.scaleTransition,
          child: BigPlayer(
            album: album,
          ));
    }
  }));

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher:
          BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}
