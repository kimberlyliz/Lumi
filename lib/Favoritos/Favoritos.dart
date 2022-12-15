import 'package:flutter/material.dart';
import 'dart:ui';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Minha Lista'),
        bottomOpacity: 0.0,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
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
              Center(
                child: SafeArea(child: 
                SizedBox(
                  child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Container(
                            alignment: Alignment.topCenter,
                            height: 170,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child: Image.asset('assets/Filmes/lord4.png')),
                                    Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child: Image.asset('assets/Filmes/theboys5.png')),
                                 Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child: Image.asset('assets/Filmes/jogosVorazes4.png')),
                                ],
                              ),
                           ),
                          
                          Container(
                            alignment: Alignment.topCenter,
                            height: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:  Image.asset('assets/Filmes/AremessandoAlto4.png')),
                               Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:  Image.asset('assets/Filmes/Avatar4.png')),
                               Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:  Image.asset('assets/Filmes/BreakingBad4.png')),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/Reacher5.png')),
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/Impossivel4.png')),
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/You5.png')),
                              ]
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/Dune4.png')),
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/Law4.png')),
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/HighSchoolMusical4.png')),
                              ]
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/Batman4.png')),
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/AsBranquelas4.png')),
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/CobraKai4.png')),
                              ]
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:   Image.asset('assets/Filmes/Dahmer4.png')),
                               Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:  Image.asset('assets/Filmes/LaCasaDePapel4.png')),
                               Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:  Image.asset('assets/Filmes/QueridoJohn5.png')),
                              ]
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:  Image.asset('assets/Filmes/StrangerThings5.png')),
                               Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:  Image.asset('assets/Filmes/SuperNatural5.png')),
                               Container(
                                    alignment: Alignment.topCenter,
                                    height: 163,
                                    width: 115,
                                    child:  Image.asset('assets/Filmes/UltimoHomem5.png')),
                              ]
                            ),
                          ),

                        ],
                      ),
                  ),
                  
                  ),
                )
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}