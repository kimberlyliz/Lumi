import 'package:flutter/material.dart';

class UserPostsFeed extends StatefulWidget {
  const UserPostsFeed({Key? key}) : super(key: key);

  @override
  _UserPostsFeedState createState() => _UserPostsFeedState();
}

class _UserPostsFeedState extends State<UserPostsFeed> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(children: [
        Divider(color: Colors.purple),
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Feed/perfil_1.jpeg")),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'gabrielplutarco',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 290,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                )
              ],
            )),
        Divider(color: Colors.purple),
        Container(
          width: 800,
          child: Image.asset(
            'assets/Feed/gabi.jpeg',
            height: 300,
            width: 800,
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 35,
            ),
            Image.asset(
              "assets/Feed/heart.png",
              height: 30,
              width: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/Feed/chat.png",
              height: 30,
              width: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/Feed/send.png",
              height: 30,
              width: 18,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 2, 0, 0),
                  child: Text(
                    "762 curtidas",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 2, 0, 0),
              child: Row(children: [
                Text(
                  "gabrielplutarco",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 13),
                ),
                Text(
                  "   'avaliação'",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 3, 0, 0),
                  child: Text(
                    "Ver todas as 239 avaliações sobre o filme Avatar",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 3, 0, 0),
                  child: Text(
                    "Adicione uma avaliação...",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 3, 0, 0),
                  child: Text(
                    "Há 4 minutos",
                    style: TextStyle(color: Colors.white24),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.purple),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Feed/perfil_2.jpeg")),
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'DaviCoelho',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 290,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
            Divider(color: Colors.purple),
            Container(
              width: 800,
              child: Image.asset(
                'assets/Feed/davi.jpeg',
                height: 300,
                width: 800,
              ),
            ),
          ],
        ),
        //below the post->buttons and coments
        /* Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(Icons.chat_bubble_outline),
                    ),
                    Icon(Icons.share),
                  ],
                ),
                Icon(Icons.bookmark),
              ],
            )), */
        //coments
        /* Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: Row(children: [
            Text('liked by'),
            Text(
              'vladimir',
              style: TextStyle(fontWeight: FontWeight.bold),
            ), //texte
            Text('and'),
            Text(
              'others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
        ), */
        //caption
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(),
              ]),
            ))
      ]),
    );
  }
}
