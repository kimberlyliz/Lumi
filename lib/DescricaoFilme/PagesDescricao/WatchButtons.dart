import 'package:flutter/material.dart';

class WatchButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FloatingActionButton.extended(
          label: Text('PRIME VIDEO'),
          backgroundColor: Colors.grey,
          icon: ImageIcon(
            AssetImage("assets/play-button.png"),
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 60,
        ),
        FloatingActionButton.extended(
          label: Text('GLOBOPLAY'),
          backgroundColor: Colors.red,
          icon: ImageIcon(
            AssetImage("assets/play-button.png"),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}