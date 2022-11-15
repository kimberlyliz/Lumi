import 'package:flutter/material.dart';
 import 'SingInPageeFirst.dart';
 import 'dart:ui';
 import 'main.dart';
 class EmailCodePagee extends StatefulWidget {
   const EmailCodePagee({super.key});

   @override
   State<EmailCodePagee> createState() => _EmailCodePageeState();
 }

 class _EmailCodePageeState extends State<EmailCodePagee> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       
       body:
       SingleChildScrollView(
        child:
      Column(
       children: [
        BackgroundGradient(),
SizedBox(height: 170,),
       //text
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25),
 child: Text('Inserir código de confirmaçào',
 style: TextStyle(
   color: Colors.white,
   fontWeight: FontWeight.bold,
 ),
 ),
       ),
 SizedBox(height:20),
       //text1
       Padding(
         padding: const EdgeInsets.symmetric(horizontal:25 ),
         child:
         Text(
           'Insira o código de confirmação enviado',
           style:TextStyle(
            color:Colors.white,
           ),
         ),
         ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child:
          Container(
          child:
          Center(
          child:
          Row(
            children:[
              
         Text(
          'para o seu email.',
          style: TextStyle(
            color: Colors.white,
          ),
         ),
         MaterialButton(onPressed: (){
           setState(() {

           }) ;
         },
         child: Text( 
          'Reenviar código',
            style: TextStyle(
            color:Colors.white,
            fontWeight: FontWeight.bold,
 ),
         ),
            
            )
       ]),
       ),
         ),
         ),
         
     






       //code
      Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
      child:  Container(
       decoration: BoxDecoration(
         color:Colors.grey,
         borderRadius:BorderRadius.circular(12),

       ),
       child: TextField(
         decoration: InputDecoration(
           hintText: 'Código para login',
           disabledBorder:  UnderlineInputBorder(
             borderSide: BorderSide.none,
           )
         )
         ),
       ),
      ),
      SizedBox(height:10),
       //buton
       Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25),
       child:
       Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
       child:
       Center(
       child: MaterialButton(
        onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context){
           return SingInPageeFirst();
         }));
       },
       child: Text(
         'Avançar',
         style: 
         TextStyle(
          color: Colors.white,
          ),
         )
         ),
         ),
       ),
         ),
      ] ),
      )
       )
     ;
   } }
