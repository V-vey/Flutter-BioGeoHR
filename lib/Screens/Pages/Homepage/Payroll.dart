import 'package:flutter/material.dart';

class Payroll extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 155,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFCFCFC),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 6.0,
            spreadRadius: 4.0,
            offset: const Offset(0, 2)
          )
        ]
      ),
    );
  }
}