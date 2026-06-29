import 'package:flutter/material.dart';

import 'Homepage/ClockIn.dart';
import 'Homepage/LeaveBalance.dart';
import 'Homepage/Payroll.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var items = 
      Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            ClockIn(),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 7.5),
                    child: Payroll(),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7.5),
                    child: LeaveBalance()
                  )
                  
                ]
              )
            )
            
          ]
        )
      );
      
    return items;
  }
}