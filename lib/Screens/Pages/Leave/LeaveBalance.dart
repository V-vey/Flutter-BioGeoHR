import 'package:flutter/material.dart';

class LeaveBalance extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Container(
                width: 165,
                height: 70,
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
              ),
              SizedBox(width: 15),
              Container(
                width: 165,
                height: 70,
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
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Container(
                width: 165,
                height: 70,
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
              ),
              SizedBox(width: 15),
              Container(
                width: 165,
                height: 70,
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
              )
            ],
          ),
        ],
      )
    );
  }

}