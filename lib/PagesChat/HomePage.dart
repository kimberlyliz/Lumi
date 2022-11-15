import 'package:flutter/material.dart';
import 'RecentChats.dart';
import 'ActiveChats.dart';


class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: const [
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child:Icon(Icons.notifications),
        )
        ],
      ),
      body: 
      ListView(children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Text(
            "Messages",
            style: TextStyle(
              color: Colors.white,
              //Color(0xFF113953),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],    
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    color: Color(0xFF113953),
                ),
              ],
            ),
          ),  
        ),
        ActiveChats(),
        RecentChats(),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      backgroundColor: const Color(0xFF113953),
      child: const Icon(Icons.message),
      ),
      

    );
  }
}