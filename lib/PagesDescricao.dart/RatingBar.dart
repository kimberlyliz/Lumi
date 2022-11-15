import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star_half,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          "1.6 mil",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}