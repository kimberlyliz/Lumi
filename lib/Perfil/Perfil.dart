import 'package:flutter/material.dart';
import 'package:lumi_code/BNB_Inicio/BNB_Inicio.dart';

//BOTTOM NAVIGATION BAR NÃO PEGOU
//Aq o código foi criado a partir do bottom nav bar. Se possível corrigir para apenas chamar a classe do BottomNavBar

class InitialCodePerfil extends StatefulWidget {
  const InitialCodePerfil({super.key});

  @override
  State<InitialCodePerfil> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<InitialCodePerfil> {

  int _currentIndex = 0;
  void _navigateBottomNavBar(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  final List<Widget> _children = [
    Perfil(),
    Center(child: Text('.')),
    Center(child: Text('.')),
    Center(child: Text('.')),
    Center(child: Text('.')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF000000),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color.fromARGB(255, 163, 163, 163),
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: _navigateBottomNavBar,
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

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff220037),
        elevation: 0.0,
        title: Row(
          children: [
           /* GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()),);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),*/
            SizedBox(width: 15),
            Text(
              "mobiurodaly",
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(170, 0, 0, 0),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(),
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
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 175,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 124, 98, 163),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Image.asset(
                              'assets/user (1).png',
                              height: 9,
                              width: 9,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text('238',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text(
                                    'Seguindo',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('103',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text(
                                    'Seguidores',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('10k',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text(
                                    'Curtidas',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Mobiu Rodaly',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: (EdgeInsets.only(top: 10, left: 30, right: 25)),
                    height: 40,
                    width: 460,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: TextButton(
                      child: Center(
                        child: Text(
                          'Editar perfil',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Series favoritas',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25)),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 140,
                    child: Image.asset(
                      'assets/plus (1).png',
                      width: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Filmes favoritos',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25)),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 140,
                    child: Image.asset(
                      'assets/plus (1).png',
                      width: 60,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
