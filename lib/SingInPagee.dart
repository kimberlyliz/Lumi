import 'package:flutter/material.dart';
 import 'LoginPage.dart';
 import 'EmailCodePagee.dart';
 class SingInPagee extends StatefulWidget {
   const SingInPagee({super.key});

   @override
   State<SingInPagee> createState() => _SingInPageeState();
 }

 class _SingInPageeState extends State<SingInPagee> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color.fromARGB(255, 27, 5, 27),
       body: 
       SingleChildScrollView(
        child:
       Column(
       children: [
       //Lumi
       Image.asset('assets/images/image.png',width: 320,),

       //email
      Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25),
       child: Container(
         decoration: BoxDecoration(
           color:Colors.grey,
           borderRadius: BorderRadius.circular(12),
         )
         ,child: 
         TextField(
          decoration: 
          InputDecoration(
            hintText: '  Email',
            ),

         ),
       ),
      ),
       //buton 1
       SizedBox(height: 10,),
       Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: 
      Container(
     decoration: 
     BoxDecoration(
       color: Colors.lightBlueAccent,
       borderRadius: BorderRadius.circular(12),
       ),
     child:
    MaterialButton(
      onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context){
     return EmailCodePagee();
    }));
 },
 child: 
 Center(
  child: 
  Text(
'Avançar',
style: TextStyle(color: Colors.white,),
),
  ),),
  )
  ),
       //buton 
 SizedBox(height: 170,),

 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 25),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
       Text(
         "Já tem conta?",
         style: TextStyle(
           fontWeight: FontWeight.bold,
           color: Colors.grey,
         )
         ),
         Padding(padding: const EdgeInsets.symmetric(horizontal: 2)),

         MaterialButton(
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context){
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
       ]
     )
   ),
      ] ),
      )
     );
   }
 }