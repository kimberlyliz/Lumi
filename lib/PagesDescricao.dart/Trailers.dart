import 'package:flutter/material.dart';

class Trailers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomLeft,
          height: 75,
          child: Image.asset(
            "assets/SasL.JPG",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 28,
          left: 56,
          child: ImageIcon(
            size: 30,
            color: Colors.white,
            AssetImage("assets/play-button.png"),
          ),
        )
      ],
    );
  }
}