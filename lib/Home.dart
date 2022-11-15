import 'package:flutter/material.dart';
import 'package:lumi_code/Inicio.dart';
import 'package:lumi_code/Perfil.dart';
import 'package:lumi_code/Chat.dart';
import 'package:lumi_code/Feed.dart';
import 'package:lumi_code/Favoritos.dart';
import 'package:lumi_code/Buscar.dart';

//tela de definição do Bottom Navigation Bar e sua navegação

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   int myIndex = 0;
   List<Widget> widgetList = const [
    Inicio(),
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


