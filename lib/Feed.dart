import 'package:flutter/material.dart';
import 'package:lumi_code/model/UserPostsFeed.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff220037),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            logoWidget("assets/lumi_logo_row.png"),
            Container(
                child: Row(
              children: [
                Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(106, 217, 217, 217),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/lupa512forte.png",
                      height: 30,
                    )),
                SizedBox(
                  width: 30,
                ),
                Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(106, 217, 217, 217),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/Feed/plus.png",
                      height: 30,
                    ))
              ],
            ))
            /* 
            Image.asset("assets/lupa512forte.png", height: 20,) */
          ],
        ),
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
            children: const [
              //FAZER/COLAR SEU CÓDIGO AQUI.
              UserPostsFeed()
            ],
          ),
        ),
      ),
    );
  }

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 120,
    height: 90,
  );
}
  
}