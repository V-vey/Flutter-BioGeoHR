import 'package:flutter/material.dart';

import 'Attendance/Attendance.dart';
import 'Attendance/MonthlyAttendance.dart';

class LeavePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var items = 
      Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ) 
          ]
        )
      );
      
    return items;
  }
}