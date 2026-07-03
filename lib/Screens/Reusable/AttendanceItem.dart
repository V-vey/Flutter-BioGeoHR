import 'package:flutter/material.dart';

class AttendanceItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 100,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(7.5),
        color: Color(0xFFFCFCFC),
        boxShadow: [
          BoxShadow(
            color: Color(0x25000000),
            blurRadius: 3,
            spreadRadius: 1.5,
            offset: const Offset(0, 0)
          )
        ]
      ),
      child: Container(
        child: Column(
          children: [

            //Top Part
            Container(
              padding: EdgeInsets.only(top:5, bottom: 5, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //Location
                  Text('Office', //Location
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight(450),
                      fontSize: 14
                    ),
                  ), 

                  // Status
                  Container(
                    child: Row(
                      children: [
                        Text('On-Time', //Status
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight(450),
                            fontSize: 14
                          ),
                        ), 
                        SizedBox(width: 5),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Color(0xFF2AAF56),
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
            ),

            //line
            Container(
              width: 310,
              height: 1,
              color: Color(0xFFE0E0E0)
            ),


          ],
        ),
      )
    );
  }
}