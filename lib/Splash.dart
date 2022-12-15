import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:lumi_code/LoginPage.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  /*@override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Positioned(
                top: 88,
                left: -125,
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff5500ff).withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200,
                    ),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  child: Image(
                    image: AssetImage('assets/lumi_splash.png'),
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
