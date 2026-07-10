import 'package:flutter/material.dart';

import 'RecentLeaveItem.dart';

class RecentLeave extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.symmetric(vertical: 4), 
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
            padding: EdgeInsets.all(10),
            child:Text('Recent Leave',
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Color(0xFF6675EC),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,  
              ),
            ),
          ),
          Container(
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 350, height: 1, color: Color(0xFFE0E0E0)),
                RecentLeaveItem(),
                
              ],
            ),
          )
          
        ],
      ),
    );
  }
}