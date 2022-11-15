import 'package:flutter/material.dart';
import 'package:lumi_code/PagesChat/ChatPage.dart';
import 'package:lumi_code/PagesChat/HomePage.dart';


class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff220037),
          //const Color(0xFFF5F5F3),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff220037),
            // Color(0xFFF5F5F3),
            foregroundColor: Colors.white
            //Color(0xFF113953),
          )
          ),
      routes: {
        "/": (context) => HomePage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}