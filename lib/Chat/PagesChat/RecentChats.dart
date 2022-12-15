
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Column(children: [
        for (int i = 0; i < 10; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "chatPage");
              },
              child: SizedBox(
                height: 65,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child:Container(
                        child:
                        SafeArea(
                        child: 
                      Image.asset(
                        "assets/user.png",
                        height: 65,
                        width: 65,
                      ),
                      ),
                       ),
                        ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Usuário",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF113953),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Olá, Como você está?....",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "12:30",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 23,
                            width: 23,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF113953),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              "1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
