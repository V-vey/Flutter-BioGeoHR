import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LeaveBalanceItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final String annual = "10";

    return Container(
      padding: EdgeInsets.only(top: 5, left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Annual Leave:',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0x703A3A3A),
                  fontSize: 15.0,
                ),
              ),
              Text('10',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0xFF3A3A3A),
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sick Leave:',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0x703A3A3A),
                  fontSize: 15.0,
                ),
              ),
              Text('10',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0xFF3A3A3A),
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Paternity Leave:',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0x703A3A3A),
                  fontSize: 15.0,
                ),
              ),
              Text('10',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0xFF3A3A3A),
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Unpaid Leave:',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0x703A3A3A),
                  fontSize: 15.0,
                ),
              ),
              Text('10',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0xFF3A3A3A),
                  fontSize: 15.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}