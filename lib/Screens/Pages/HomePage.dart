import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Screens/Pages/Homepage/RecentLeave.dart';

import 'Homepage/ClockIn.dart';
import 'Homepage/LeaveBalance.dart';
import 'Homepage/Payroll.dart';
import 'Homepage/RecentAttendance.dart';


class HomePage extends StatelessWidget {

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
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: RecentAttendance()
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: RecentLeave(),
            )
          ]
        )
      );
      
    return items;
  }
}