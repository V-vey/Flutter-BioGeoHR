import 'package:flutter/material.dart';
//Reusable
import 'Screens/Reusable/Header.dart';

class homepage extends StatelessWidget {
  // const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 218, 218),
      appBar: const Header(),
      
      body: const Center(child: Text('Welcome to the next file!')),
    );
  }
}
