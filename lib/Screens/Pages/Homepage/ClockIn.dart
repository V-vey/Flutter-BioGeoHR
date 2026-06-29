import 'package:flutter/material.dart';

class ClockIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 80,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFCFCFC),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
          
          Padding(
            padding: EdgeInsets.only(right: 190, top: 15, bottom: 15, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                // Container(
                //   padding: EdgeInsets.only(left: 10),
                //   width: 100,
                //   height: 20,
                //   child: Text('Inactive'),  // Status
                //   decoration: BoxDecoration(
                //     color: Color(0x222AAF56), 
                //     borderRadius: BorderRadius.circular(5),
                //   ),           

                // ),
                Container(
                 // Adds space inside the badge around the text and dot
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFD4EDDA), // Light green background
                  borderRadius: BorderRadius.circular(20.0), // Rounded capsule edges
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Shrinks the badge to fit its contents tightly
                  children: [
                    // 1. The Label Text
                    const Text(
                      'Active',
                      style: TextStyle(
                        color: Color(0xFF212529), // Dark charcoal/grey text color
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    
                    // Spacing between the text and the circle dot
                    const SizedBox(width: 8.0),
                    
                    // 2. The Status Dot (Circle Box)
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Color(0xFF28A745), // Bright solid green color
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.access_time),
                      Text(' 00:00:00')// Time
                    ]
                  )
                )
              ],
            ),
          ),
          Padding( 
            padding: EdgeInsets.only(right: 10, top: 15, bottom: 15),
            child: 
              IconButton.filled(onPressed: (){
              }, 
              icon: Icon(
                Icons.fingerprint,
                color: Color(0xFFFCFCFC),
                size: 30,
              ),
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                backgroundColor: Color(0xFF2AAF56)
              ),
              ),
          )
        ],
      ),
    );
  }
}