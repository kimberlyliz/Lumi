import 'package:flutter/material.dart';
import 'package:lumi_code/splash.dart';


void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Splash(),
        
      debugShowCheckedModeBanner: false,
    );
  }
}
