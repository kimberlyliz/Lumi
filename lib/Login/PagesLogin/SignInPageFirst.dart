import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:lumi_code/Login/PagesLogin/IconPage.dart';

bool _obscuretext = true;

class SingInPageFirst extends StatefulWidget {
  const SingInPageFirst({super.key});

  @override
  State<SingInPageFirst> createState() => _SingInPageFirstState();
}

class _SingInPageFirstState extends State<SingInPageFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 5, 27),
        body: SingleChildScrollView(
            child: Column(
      children: [
        Image.asset('assets/images/image.png'),
        //usuario
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Usuário',
                ),
              )),
        ),
        SizedBox(height: 10),

        //senha
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                  obscureText: _obscuretext,
                  decoration: (InputDecoration(
                    hintText: '  Senha',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscuretext != _obscuretext;
                        });
                      },
                      icon: Icon(_obscuretext
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  )))),
        ),

        SizedBox(height: 10),
        //buton
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return IconPage();
                      }));
                    });
                  },
                  child: Text('Cadastre-se'),
                ),
              ),
            )),
      ],
    )));
  }
}
