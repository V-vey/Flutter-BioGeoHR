import 'package:flutter/material.dart';

import 'Items/OnTime.dart';
import 'Items/Absent.dart';
import 'Items/Late.dart';
import 'Items/Leave.dart';

class  MonthlyAttendance extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 

              //Ontime
              Container(
                width: 165,
                height: 90,
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
                child: OnTime(),
              ),
              SizedBox(width: 15),

              //Absent
              Container(
                width: 165,
                height: 90,
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
                child: Absent(),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 

              //Late
              Container(
                width: 165,
                height: 90,
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
                child: Late(),
              ),
              SizedBox(width: 15),

              //Leave
              Container(
                width: 165,
                height: 90,
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
                child: Leave()
              )
            ],
          ),
        ],
      )
    );
  }
}