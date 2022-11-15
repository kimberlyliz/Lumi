import 'package:flutter/material.dart';
import 'package:lumi_code/PagesDescricao.dart/BackgroundGradient.dart';
import 'package:lumi_code/PagesDescricao.dart/Infoline.dart';
import 'package:lumi_code/PagesDescricao.dart/MoviePageButtons.dart';
import 'package:lumi_code/PagesDescricao.dart/RatingBar.dart';
import 'package:lumi_code/PagesDescricao.dart/Trailers.dart';
import 'package:lumi_code/PagesDescricao.dart/WatchButtons.dart';


class DescricaoInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundGradient(),
          
          SingleChildScrollView(
              child: SafeArea(
                  child: Column(
            children: [
              Opacity(
            opacity: 1.0,
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    "assets/SasL.jpg",
                    height: 210,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
            alignment: Alignment.topLeft,
            child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
          ),
              ],
            ),
          ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sempre Ao Seu Lado",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15),
                      Infoline(),
                      SizedBox(height: 15),
                      Text(
                        "Um professor universitário encontra na estação de trem um filhote de cachorro da raça Akita, conhecida por sua lealdade. O cão passa a acompanhá-lo até a estação de trem e esperar sua volta. Até que um acontecimento inesperado altera sua vida.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 10),
                      MoviePageButtons(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Onde assistir",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      WatchButtons(),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Assistir ao trailer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Trailers(),
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        "Avaliações",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      RatingBar(),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15.0),
                            primary: Color.fromARGB(255, 97, 5, 158),
                            fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.900,
                              50,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Comentários",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ))
                    ],
                  )),
            ],
          ))),
        ],
      ),
    );
  }
}


void setState(Null Function() param0) {}


