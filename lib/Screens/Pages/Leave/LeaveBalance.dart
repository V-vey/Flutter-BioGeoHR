import 'package:flutter/material.dart';

class LeaveBalance extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Container(
                width: 165,
                height: 70,
                color: Color(0xFFFCFCFC),
              ),
              SizedBox(width: 15),
              Container(
                width: 165,
                height: 70,
                color: Color(0xFFFCFCFC),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Container(
                width: 165,
                height: 70,
                color: Color(0xFFFCFCFC),
              ),
              SizedBox(width: 15),
              Container(
                width: 165,
                height: 70,
                color: Color(0xFFFCFCFC),
              )
            ],
          ),
        ],
      )
    );
  }

}