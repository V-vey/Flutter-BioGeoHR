import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Screens/Pages/Homepage/Container/RecentLeave/RecentLeave.dart';

import 'Container/ClockIn/ClockIn.dart';
import 'Container/LeaveBalance/LeaveBalance.dart';
import 'Container/TotalLate/TotalLate.dart';
import 'Container/Paycheck/Paycheck.dart';
import 'Container/RecentAttendance/RecentAttendance.dart';

class HomePageMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var items = 
      Container(
        margin: EdgeInsets.all(15),
        child: Column(
          spacing: 15,
          children: [
            ClockIn(),
            Paycheck(),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 7.5),
                  child: TotalLate(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 7.5),
                  child: LeaveBalance()
                )
              ]
            ),
            RecentAttendance(),
            RecentLeave(),
          ]
        )
      );
      
    return items;
  }
}