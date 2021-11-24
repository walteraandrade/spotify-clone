import 'package:flutter/material.dart';

class GreetingsSection extends StatelessWidget {
  const GreetingsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
            flex: 7,
            child: Text(
              'Good evening',
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
        Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.notifications_outlined,
                  size: 25,
                  color: Colors.white,
                ),
                Icon(
                  Icons.access_time_outlined,
                  size: 25,
                  color: Colors.white,
                ),
                Icon(
                  Icons.settings_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ],
            ))
      ],
    );
  }
}
