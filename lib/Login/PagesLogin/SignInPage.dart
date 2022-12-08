import 'package:flutter/material.dart';
import 'package:lumi_code/Login/LoginPage.dart';
import 'dart:ui';
import 'package:lumi_code/Login/PagesLogin/EmailCodePage.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 5, 27),
        body: SingleChildScrollView(
      child: Column(children: [
        Image.asset(
          'assets/images/image.png',
          width: 320,
        ),
        //email
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: '  Email',
              ),
            ),
          ),
        ),
        //buton 1
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EmailCodePage();
                  }));
                },
                child: Center(
                  child: Text(
                    'Avançar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )),
        //buton
        SizedBox(
          height: 170,
        ),

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Já tem conta?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  )),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 2)),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ])),
      ]),
    ));
  }
}
