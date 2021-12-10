import 'package:flutter/material.dart';
import 'package:spotify_clone/models/album.model.dart';
import 'package:spotify_clone/src/atomic/vseparator.dart';

class BigPlayerControl extends StatelessWidget {
  const BigPlayerControl({Key? key, required this.album}) : super(key: key);

  final Album album;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withAlpha(5)),
      child: Column(
        children: [
          const VSeparator(size: 40),
          Song(
            album: album,
          ),
          const VSeparator(size: 20),
          const SongProgressionBar(),
          const VSeparator(size: 40),
          const ControlButtons()
        ],
      ),
    );
  }
}

class Song extends StatelessWidget {
  const Song({Key? key, required this.album}) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(album.title,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              Text(album.artist, style: const TextStyle(color: Colors.white))
            ],
          ),
        )
      ],
    );
  }
}

class SongProgressionBar extends StatelessWidget {
  const SongProgressionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Colors.grey[300],
      color: Colors.white,
    );
  }
}

class ControlButtons extends StatefulWidget {
  const ControlButtons({Key? key}) : super(key: key);

  @override
  _ControlButtonsState createState() => _ControlButtonsState();
}

class _ControlButtonsState extends State<ControlButtons> {
  bool isPlaying = false;

  void onTapPlay() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Icon(Icons.shuffle, size: 30, color: Colors.white),
          flex: 1,
        ),
        const Expanded(
            child: Icon(Icons.skip_previous, size: 30, color: Colors.white),
            flex: 1),
        Expanded(
            child: GestureDetector(
              onTap: onTapPlay,
              child: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle,
                  size: 60, color: Colors.white),
            ),
            flex: 2),
        const Expanded(
            child: Icon(Icons.skip_next, size: 30, color: Colors.white),
            flex: 1),
        const Expanded(
            child: Icon(Icons.repeat, size: 30, color: Colors.white), flex: 1),
      ],
    );
  }
}
