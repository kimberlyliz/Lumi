import 'dart:ui';
import 'package:flutter/material.dart';
import '../Perfil/Perfil.dart';
import 'widgets/Lancamentos.dart';
import 'widgets/EmAlta.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff220037),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perfil()),
              );
            },
            icon: ImageIcon(
              AssetImage("assets/user (1).png"),
            ),
          ),
        ],
      ),
      body: SizedBox(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff220037),
                Colors.black,
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello Ana",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "What to watch?",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                         
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 30),
                      Lancamentos(),
                      SizedBox(height: 40),
                      EmAlta(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
