import 'package:flutter/material.dart';

import 'Attendance/Attendance.dart';
import 'Attendance/MonthlyAttendance.dart';

class AttendancePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var items = 
      Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            MonthlyAttendance(),
            SizedBox(height: 15),
            Attendance(),
            
            
          ]
        )
      );
      
    return items;
  }
}