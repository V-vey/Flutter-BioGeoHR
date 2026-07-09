import 'package:flutter/material.dart';


import 'LeaveBalance.dart';
import 'LeaveHistory.dart';

class LeavePageMain extends StatelessWidget {

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