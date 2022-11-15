import 'package:flutter/material.dart';
 import 'LoginPage.dart';
import  'dart:ui';
 void main() {

   runApp(const MyApp());
 }

 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) :super(key: key);

 @override
 Widget build(BuildContext context){
   return MaterialApp(
    
     debugShowCheckedModeBanner: false,
     home: LoginPage(),
   );
 }
 }
 class CorBackground extends BackgroundGradient{
 }
 class BackgroundGradient extends StatelessWidget {

  const BackgroundGradient({super.key});

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      body: SizedBox(

        child: Container(

          decoration: const BoxDecoration(

            gradient: LinearGradient(

              begin: Alignment.topCenter,

              end: Alignment.bottomCenter,

              colors: [

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

            ],

          ),

        ),

      ),

    );

  }

}
