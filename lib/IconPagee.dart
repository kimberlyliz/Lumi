import 'package:flutter/material.dart';
class IconPagee extends StatefulWidget {
  const IconPagee({super.key});

  @override
  State<IconPagee> createState() => _IconPageeState();
}

class _IconPageeState extends State<IconPagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 27, 5, 27),
      body:
      SingleChildScrollView(
        child:
      Column(
        children: [
          
    SizedBox(height: 200,),
      //Icon: nao encontrei um igual ao do figma ainda
      //Padding(
      //padding: const EdgeInsets.symmetric(horizontal:25),
     // child:
     // Icon(
        //IconData(0xee47, fontFamily: 'MaterialIcons'),
    //  ),
   //   ),

    
     //Text icon
     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text( 'Adicionar foto do perfil',
        style: 

        TextStyle(
          color:Colors. white, fontWeight: FontWeight.bold
          ),
      ),
     ),
     SizedBox(height: 10,),
     //Text 1 icon
     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      
      child:
      Text('Adicione uma foto do perfil para que seus amigos saibam que é você',
      style: TextStyle(
        color:Colors.white,
        ),
      )
     ),
     SizedBox(height: 10,),
     //buton 1
     
     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child:
      Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: 
        MaterialButton(onPressed: (){
          setState(() {
          });
        },
        child: 
        Text(
          'Adicionar uma foto',style: TextStyle(color:Colors.white),)
        ),
      ),
     ),
SizedBox(height:10),
     // buton 2
     Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
     child: Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: MaterialButton(onPressed: (){
        setState(() {
        });
      },
      child: Text('Pular',
      style: TextStyle(
        color:Colors.blueAccent,
        ),
        ),
     ),
     ),
     ),
      ],
      ),
      )
    );
  }
}