//New Screen for UI Challange

import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(SecondScreen());

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
       elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Living Room", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
      ),
      body: Column(
        children:  [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
                child: Image.asset('assets/fire.png', height: 100,)
            ),
          ),
          const Text("Walking in Fire"),
          const Text("40c", style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),),
           Container(
             width: MediaQuery.of(context).size.width/2,
             decoration:  BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: const Color(0xFA27CCE9),
               boxShadow:const  [
                 BoxShadow(
                   color: Colors.black12,
                   blurRadius: 8,
                   spreadRadius: 2,
                 ),
               ],
             ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text("Cool the House now!", style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
