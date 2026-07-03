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
      
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Text('Payroll',
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Color(0xFF6675EC),
                fontSize: 17.0,
                fontWeight: FontWeight.bold,  
              ),
            ),
          ),
          Container(width: 170, height: 1, color: Color(0xFFE0E0E0))
        ],
      )
    );
  }
}