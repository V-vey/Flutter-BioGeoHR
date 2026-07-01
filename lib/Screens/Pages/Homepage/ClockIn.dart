import 'package:flutter/material.dart';

class ClockIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFCFCFC),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                 // Adds space inside the badge around the text and dot
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                        color: Color(0xFF3A3A3A), // Dark charcoal/grey text color
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
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
                      Text(' 00:00:00')// Time
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
              }, 
              icon: Icon(
                Icons.fingerprint,
                color: Color(0xFFFCFCFC),
                // size: 30,
              ),
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                backgroundColor: Color(0xFF2AAF56),
                iconSize: 50,
                fixedSize: Size(60, 60)
              ),
            ),
          )
        ],
      ),
    );
  }
}