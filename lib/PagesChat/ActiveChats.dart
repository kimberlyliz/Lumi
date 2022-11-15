// ignore: file_names
import 'package:flutter/material.dart';

class ActiveChats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 5),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 10; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        child:
                        SafeArea(
                          child:
                       Image.asset(
                        "assets/user.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          )),
    );
  }
}
