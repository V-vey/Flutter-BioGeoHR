import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_biogeohr/Service/Stopwatch.dart';
import 'Cont/Time.dart';

class ClockIn extends StatefulWidget {
  
  @override
  State<ClockIn> createState() => _ClockInState();
}

class _ClockInState extends State<ClockIn> {
  final Stopwatch stopwatch = Stopwatch();

  final Time time = Time();


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 80,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                 // Adds space inside the badge around the text and dot
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: const Color(0x222AAF56), // Light green background
                  borderRadius: BorderRadius.circular(20.0), // Rounded capsule edges
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Shrinks the badge to fit its contents tightly
                  
                  children: [
                    // 1. The Label Text
                    const Text(
                      'Active',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xFF3A3A3A),
                        fontSize: 17.0,

                      ),
                    ),
                    
                    // Spacing between the text and the circle dot
                    const SizedBox(width: 8.0),
                    
                    // 2. The Status Dot (Circle Box)
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2AAF56), // Bright solid green color
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Icon(Icons.access_time), //icon
                      Text(time.formatDuration(stopwatch.elapsed)), //time
                      
                    ]
                  )
                )
              ], // Children
            ),
          ),
          Spacer(),
          //biometric button
          Padding( 
            padding: EdgeInsets.only(right: 10, top: 15, bottom: 15),
            child: 
              IconButton.filled(onPressed: (){
                if (stopwatch.isRunning) {
                  stopwatch.stop();
                }else {
                  stopwatch.start();
                }
              }, 
              icon: Icon(
                Icons.fingerprint,
                color: Color(0xFFFCFCFC),
                // size: 30,
              ),
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                backgroundColor: Color(0xFF2AAF56),
                iconSize: 40,
                fixedSize: Size(50, 50)
              ),
            ),
          )
        ],
      ),
    );
  }
}