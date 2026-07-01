import 'package:flutter/material.dart';


import 'Leave/LeaveBalance.dart';
import 'Leave/LeaveHistory.dart';

class LeavePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var items = 
      Container(
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              LeaveBalance(),
              SizedBox(height: 15),
              LeaveHistory(),
          ]
        )
      );
      
    return items;
  }
}