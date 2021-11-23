import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommendationsRow extends StatelessWidget {
  const RecommendationsRow({Key? key}) : super(key: key);

  Widget _buildList() {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(2),
      children: <Widget>[
        Container(
          width: 100,
          color: Colors.black,
          margin: const EdgeInsets.all(2),
          child: Column(
            children: [Image.asset('images/marley_exodus.jpeg')],
          ),
        ),
        Container(
          width: 100,
          color: Colors.blue,
          margin: const EdgeInsets.all(2),
          child: Column(
            children: [Image.asset('images/heynes_lsd.jpeg')],
          ),
        ),
        Container(
          width: 100,
          color: Colors.blue,
          margin: const EdgeInsets.all(2),
          child: Column(
            children: [Image.asset('images/leprous_aphelion.jpeg')],
          ),
        ),
        Container(
          width: 100,
          color: Colors.yellow,
        ),
        Container(
          width: 100,
          color: Colors.orange,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildList());
  }
}
