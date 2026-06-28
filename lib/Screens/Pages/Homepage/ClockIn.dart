import 'package:flutter/material.dart';

class ClockIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 75,
      color: Color(0xFFFCFCFC),
      
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 190, top: 15, bottom: 15, left: 10),
            child: Column(
              children: [
                Text('Inactive'), // Status
                Text('00:00:00') // Time
              ],
            ),
          ),
          Padding( 
            padding: EdgeInsetsGeometry.only(right: 10, top: 15, bottom: 15),
            child: 
              IconButton.filled(onPressed: (){
              }, 
              icon: Icon(
                Icons.fingerprint,
                color: Color(0xFFFCFCFC),
                size: 30,
              ),
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                backgroundColor: Color(0xFF2AAF56)
              ),
              ),
          )
        ],
      ),
    );
  }
}