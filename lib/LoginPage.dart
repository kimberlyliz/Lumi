import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:lumi_code/PagesLogin/SignInPage.dart';

bool _obscuretext = true;

 //import 'package:trabalhoo/tela1.dart';


 class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 /*  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Home())));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 5, 27),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/images/image.png',
              width: 320,
            ),
            SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: '  Email ou nome de usuário',
                      ),
                    ))),
            SizedBox(
              height: 10,
            ),

            // password textfield

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                    obscureText: _obscuretext,
                    decoration: InputDecoration(
                      hintText: '  Senha',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
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
                    ),
                  ),
                )),

            SizedBox(
              height: 10,
            ),
            // sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 100, 147),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text('Entrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // esqueceu a senha?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      openDialog();
                    },
                    child: Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 24,
            ),
            // nao é cadastrado? cadastre-se agora
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Não tem conta?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      )),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 2)),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignInPage();
                      }));
                    },
                    child: Text(
                      "Criar conta",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ])),
          ]),
        )
        );
  }



  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Color.fromARGB(255, 27, 5, 27),
          title: Container(
            child: Center(
              child: Text(
                style: TextStyle(color: Colors.white),
                'Redefinir senha',
              ),
            ),
          ),
          content: Container(
            width: 270,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Center(
              child: Column(
                children: [
                  //texto1
                  Text(
                      'Insira um email vinculado a sua conta e enviaremos para você um link para redefinir sua senha',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(height: 20),
                  //email
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: '  Email',
                    )),
                  )
                ],
              ),
            ),
          ),
          actions: [
            //buton 1
            Center(
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: MaterialButton(
                      onPressed: buton1,
                      child: Text('Enviar'),
                    )),

                //buton 2
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: MaterialButton(
                    onPressed: buton2,
                    child:
                        Text('Cancelar', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ]),
            )
          ],
        ),
      );

  void buton1() {
    Navigator.of(context).pop();
  }

  void buton2() {
    Navigator.of(context).pop();
  }



}
