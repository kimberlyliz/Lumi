import 'package:flutter/material.dart';

 class ForgotPasswordPagee extends StatefulWidget {
   const ForgotPasswordPagee({super.key});

   @override
   State<ForgotPasswordPagee> createState() => _ForgotPasswordPageeState();
 }

 class _ForgotPasswordPageeState extends State<ForgotPasswordPagee> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color.fromARGB(255, 27, 5, 27),
       body: 

       Column(


         mainAxisAlignment: MainAxisAlignment.center,
         children: [

           //text
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 25),
   child:
   Text('Redefinir senha:',
   textAlign: TextAlign.center,
   style:
   TextStyle(
     color:Colors.white,
     ),
   ),
 ),
 SizedBox(height:20),
           //text
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
           child:
           Text('Insira o email vinculado a sua conta e enviaremos a você um link para redefinir sua senha.',
           style:TextStyle(color:Colors.white,),
           textAlign: TextAlign.center,
           ),),
           SizedBox(height: 10,),
          // email
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Container(
               decoration:BoxDecoration(
                 color:Colors.grey,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: TextField(
                 decoration:
                 InputDecoration(
                 hintText: '  Email',
                 disabledBorder: 
                 UnderlineInputBorder(
                   borderSide: BorderSide.none, 
                   ),
               ),
               ),
             )
             ,
           )
 ,
 SizedBox(height: 10,),

        //buton envi
        Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25),
         child: 
         Container(
          padding: EdgeInsets.all(15),
           decoration: BoxDecoration(
           color: Colors.lightBlueAccent,
           borderRadius: BorderRadius.circular(17)),
           child:
 //MaterialButton(onPressed: (){},
 //color: Colors.transparent,
 //child:
 Center(
  child:
 Text('Enviar'),
// ),
 )
 ),
 ),
       //buton cancelar
      SizedBox(height:10),
       Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25),
       child: Container(
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(12),
         ),
         child:
 MaterialButton(onPressed: (){
  
 },
 color:Colors.transparent,
 child: 
 Center(
child:
 Text('Cancelar'),
 ),
 ),
       ),
       )

           ]
           )
     );
   }
 }
