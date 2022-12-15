import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';





class DescricaoSerie extends StatelessWidget {
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
                        "assets/DescSerie/initial.jpg",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),

              /*   Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),*/
              //SizedBox(height: 90),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Greys Anatomy",
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
                        "Estagiários cirúrgicos e seus supervisores embarcam em uma jornada médica onde se tornam parte de histórias comoventes e tomam decisões que mudam suas vidas para se tornarem os melhores médicos.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
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
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      WatchButtons(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Episódios",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Temporada 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11                          
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 75,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/DescSerie/1.png",
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("  1. A Hard Day's Night", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 75,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/DescSerie/2.png",
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("  2. The First Cut Is The Deepest", style: TextStyle(color: Colors.white),)
                          
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 75,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/DescSerie/3.png",
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("  3. Winning a Battle, Losing the War", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 75,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/DescSerie/4.jpg",
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("  4. No Man's Land", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 75,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/DescSerie/5.jpg",
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("  5. Shake Your Groove Thing", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 75,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/DescSerie/6.jpg",
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("  6. If Tomorrow Never Comes", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 75,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/DescSerie/7.jpg",
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("  7. The Self-Destruct Button", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Avaliações",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      RatingBar(),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15.0),
                            primary: Color.fromARGB(255, 97, 5, 158),
                            fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.850,
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

class MoviePageButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              child: Icon(Icons.check, color: Colors.white, size: 50),
            ),
            Text(
              "Minha lista",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.thumb_up, color: Colors.white, size: 35),
            ),
            Text(
              "Avaliar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ImageIcon(
                color: Colors.white,
                AssetImage(
                  "assets/DescSerie/send.png",
                ),
                size: 35,
              ),
            ),
            Text(
              "Compartilhar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

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
              fontSize: 10,
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Container(
          child: Text(
            "2005",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
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
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
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
              /* Positioned(
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
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

class WatchButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 150,
          child: FloatingActionButton.extended(
            label: Text(
              'PRIME VIDEO',
            ),
            backgroundColor: Colors.grey,
            icon: ImageIcon(
              AssetImage("assets/DescSerie/play-button.png"),
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 40,
          width: 150,
          child: FloatingActionButton.extended(
            label: Text('GLOBOPLAY'),
            backgroundColor: Colors.red,
            icon: ImageIcon(
              AssetImage("assets/DescSerie/play-button.png"),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class Trailers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomLeft,
          height: 75,
          child: Image.asset(
            "assets/DescSerie/1.png",
            fit: BoxFit.fill,
          ),
        ),
        /*Positioned(
          bottom: 28,
          left: 56,
          child: ImageIcon(
            size: 30,
            color: Colors.white,
            AssetImage("assets/play-button.png"),
          ),
        )*/
        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.bottomLeft,
          height: 75,
          child: Image.asset(
            "assets/DescSerie/2.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

class RatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 12,
          Icons.star_half,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          "1.6 mil",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
