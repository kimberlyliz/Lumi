import 'package:flutter/material.dart';
import 'package:lumi_code/DescricaoFilme/PagesDescricao/BackgroundGradient.dart';
import 'package:lumi_code/DescricaoFilme/PagesDescricao/Infoline.dart';
import 'package:lumi_code/DescricaoFilme/PagesDescricao/MoviePageButtons.dart';
import 'package:lumi_code/DescricaoFilme/PagesDescricao/RatingBar.dart';
import 'package:lumi_code/DescricaoFilme/PagesDescricao/Trailers.dart';
import 'package:lumi_code/DescricaoFilme/PagesDescricao/WatchButtons.dart';

import '../Avaliacao/Avaliacao.dart';

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
                        "Um professor universit??rio encontra na esta????o de trem um filhote de cachorro da ra??a Akita, conhecida por sua lealdade. O c??o passa a acompanh??-lo at?? a esta????o de trem e esperar sua volta. At?? que um acontecimento inesperado altera sua vida.",
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
                        "Avalia????es",
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Avaliacao()),
                            );
                          },
                          child: Text(
                            "Coment??rios",
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
