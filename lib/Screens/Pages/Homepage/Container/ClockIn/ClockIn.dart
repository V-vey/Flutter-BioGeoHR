import 'package:flutter/material.dart';
import 'dart:async';
import '../../../../Reusable/Badge/TimeBadge.dart';
import '../../../../../Controller/Homepage/GetLocation.dart';
import 'Time.dart';
import 'LocationList.dart';


//testing 
import '../../../../../Controller/Homepage/LeaveBalanceController.dart';
class ClockIn extends StatelessWidget {
  final stopwatch;
  ClockIn({
    super.key,
    required this.stopwatch,
  });
  final LeaveBalance bal = LeaveBalance();
  final GetLocation location = GetLocation();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
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
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                TimeBadge(status: "Active"),
                Time(isRunning: true, controller: stopwatch)
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Column(
              children: [
                LocationList(),
                TextButton(
                  
                  onPressed: ()  async {
                    // List testing = await location.getLocation();
                    String testing = await bal.getBalanceLeave("annual").toString();
                    print(testing);
                  },
                  
                  child: Text("clock in")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}