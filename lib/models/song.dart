import 'package:spotify_clone/models/album.model.dart';

class Song {
  const Song(
      {required this.title, required this.duration, required this.album});

  final String title;
  final String duration;
  final Album album;
}
