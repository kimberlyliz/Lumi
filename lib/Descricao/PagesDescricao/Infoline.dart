import 'package:flutter/material.dart';

class Infoline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(
            "97% relevante",
            style: TextStyle(
              color: Colors.green,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Container(
          child: Text(
            "2009",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Container(
          child: Text(
            "Drama",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
