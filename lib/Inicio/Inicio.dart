import 'package:flutter/material.dart';
import 'package:lumi_code/Descricao/DescricaoInicio.dart';
import 'package:lumi_code/Perfil/Perfil.dart';

class TelaDeInicio extends StatefulWidget {
  const TelaDeInicio({super.key});

  @override
  State<TelaDeInicio> createState() => _TelaDeInicioState();
}

class _TelaDeInicioState extends State<TelaDeInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela TelaDeInicio'),
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
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'TELA INICIAL DE FILMES E SÉRIES\nObs: Essa tela ainda não foi construída',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DescricaoInicio()),
                              );
                            },
                            child: Text('TELA DE DESCRIÇÃO'),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                      /*IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perfil()),
              );
            },
            icon: ImageIcon(
              AssetImage("assets/user (1).png"),
            ),
          ),*/

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
