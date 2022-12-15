import 'package:flutter/material.dart';
import 'package:lumi_code/BNB_Inicio/BNB_Inicio.dart';
import 'dart:ui';


class IconPage extends StatefulWidget {
  const IconPage({super.key});

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 5, 27),
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Image.asset(
            'assets/images/Unknown.png',
            width: 320,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Adicionar foto do perfil',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Text 1 icon
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Adicione uma foto do perfil para que seus amigos saibam que é você',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          //buton 1

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return BNB_Inicio();
                    }),
                  );
                },
                child: Text(
                  'Adicionar uma foto',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          // buton 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return BNB_Inicio();
                    }),
                  );
                },
                child: Text(
                  'Pular',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
