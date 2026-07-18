import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../../../Reusable/Badge/TimeBadge.dart';
import '../../../../../Controller/Homepage/ClockIn/GetLocation.dart';
import 'Time.dart';
import 'LocationList.dart';
import 'ClockInButton.dart';
//testing
import '../../../../../Controller/Homepage/LeaveBalanceController.dart';

class ClockIn extends StatefulWidget {
  @override
  State<ClockIn> createState() => _ClockInState();
}

class _ClockInState extends State<ClockIn> {
  final LeaveBalance bal = LeaveBalance();

  final GetLocation location = GetLocation();
  String status = "Inactive";
  String? selectedValue = 'Select Location';
  void setStatusActive() {
    setState(() {
      status = 'Active';
    });
  }

  void setStatusInactive() {
    setState(() {
      status = 'Inactive';
    });
  }

  @override
  Widget build(BuildContext context) {
    //for the timer to global call function
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
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                TimeBadge(status: status),
                Spacer(),
                LocationList(),
              ],
            ),
          ),
          //timer and button for callback start
          Time(),
        ],
      ),
    );
  }
}
