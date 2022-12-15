import 'package:flutter/material.dart';

class MoviePageButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              child: Icon(Icons.check, color: Colors.white, size: 50),
            ),
            Text(
              "Minha lista",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.thumb_up, color: Colors.white, size: 35),
            ),
            Text(
              "Avaliar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ImageIcon(
                color: Colors.white,
                AssetImage(
                  "assets/send.png",
                ),
                size: 35,
              ),
            ),
            Text(
              "Compartilhar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

