import 'package:flutter/material.dart';
import 'package:lumi_code/Inicio/Inicio.dart';
import 'package:lumi_code/Inicio_2/HomePage.dart';
import 'package:lumi_code/Perfil/Perfil.dart';
import 'package:lumi_code/Chat/Chat.dart';
import 'package:lumi_code/Feed/Feed.dart';
import 'package:lumi_code/Favoritos/Favoritos.dart';
import 'package:lumi_code/Buscar/Buscar.dart';
import 'package:lumi_code/Inicio_2/HomePage.dart';

//tela de definição do Bottom Navigation Bar e sua navegação

class BNB_Inicio extends StatefulWidget {
  const BNB_Inicio({super.key});

  @override
  State<BNB_Inicio> createState() => _BNB_InicioState();
}

class _BNB_InicioState extends State<BNB_Inicio> {
   int myIndex = 0;
   List<Widget> widgetList = const [
    HomePage(),
    Chat(),
    Feed(),
    Favoritos(),
    Buscar(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             /*appBar: AppBar(
        title: Text("Tela de início provisória"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Perfil()),);
          }, icon: ImageIcon(
              AssetImage("assets/user (1).png"),),),
        ],
       ),*/

      body: Center(
        child: widgetList[myIndex],
      ),
      // body: Center(child: Text('Teste'),) ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF000000),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color.fromARGB(255, 163, 163, 163),
        selectedItemColor: Colors.white,
        
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Início',
            icon: ImageIcon(
              AssetImage("assets/home512.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/home512cheio.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: ImageIcon(
              AssetImage("assets/chat512.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Feed',
            icon: ImageIcon(
              AssetImage("assets/lumi_icon.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favoritos',
            icon: ImageIcon(
              AssetImage("assets/heart512.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/heart512cheio.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Buscar',
            icon: ImageIcon(
              AssetImage("assets/lupa512.png"),
            ),
            //activeIcon: ImageIcon(AssetImage('assets/lupa512forte.png'),),
          )
        ],
      ),
    );
  }
}


