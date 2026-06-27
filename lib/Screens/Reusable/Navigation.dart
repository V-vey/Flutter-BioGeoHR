import 'package:flutter/material.dart';
import 'TextBioGeoHR.dart';

class Navigation extends StatefulWidget{

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return 
    BottomNavigationBar(
      onTap: (index){
        setState((){
          myIndex = index;
        });
      },
      currentIndex: myIndex,

      unselectedItemColor: Color(0xFF6675EC),
      selectedItemColor: Color(0xFF6675EC),
      selectedLabelStyle: TextStyle(
        decoration: TextDecoration.underline,
        fontFamily: 'Roboto',
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color(0xFF6675EC)
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color(0xFF6675EC)
      ),
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home' ,
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Attendance'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.time_to_leave),
          label: 'Leave'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile'
        )
      ]
    );
  }
}