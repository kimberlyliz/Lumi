import 'dart:ui';
import 'package:flutter/material.dart';

class Avaliacao extends StatefulWidget {
  const Avaliacao({super.key});
  @override
  State<Avaliacao> createState() => _AvaliacaoState();
}

class _AvaliacaoState extends State<Avaliacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff220037),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: Color.fromARGB(255, 201, 200, 200),
            ),
            onPressed: () {},
          )
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/sasl.png',
                        width: 200,
                        height: 210,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      'Sempre Ao Seu Lado',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      'De Lasse Hallstrom',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 48, 48),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            '5.0',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 350.0,
                    height: 160.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 48, 48),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "   Adicione um cometário...",
                              hintStyle: TextStyle(
                                color: Colors.white60,
                                //fontWeight: FontWeight.bold
                              ),
                              border: InputBorder.none
                            
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: Container(
                      width: 150.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 131, 33, 243),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: TextButton(onPressed: (){}, child: Text('PUBLICAR', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
