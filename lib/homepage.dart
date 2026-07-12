import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Screens/Pages/Attendance/Attendance.dart';
//Reusable
import 'Screens/Reusable/Header.dart';
import 'Screens/Reusable/Navigation.dart';

//Homepage
import 'Screens/Pages/Homepage/Container/LeaveBalance/LeaveBalance.dart';
import 'Screens/Pages/Homepage/Container/TotalLate/TotalLate.dart';

//Pages
import 'Screens/Pages/Homepage/HomePageMain.dart';
import 'Screens/Pages/Attendance/AttendancePageMain.dart';
import 'Screens/Pages/Leave/LeavePageMain.dart';
import 'Screens/Pages/Profile/ProfilePageMain.dart';

class Homepage extends StatefulWidget {

  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  int _currentIndex = 0;
  final List<Widget> _widgetList = [
    HomePageMain(),
    AttendancePageMain(),
    LeavePageMain(),
    ProfilePageMain(),
  ];
  
  static get lBal => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      appBar: const Header(),
      
      body: SingleChildScrollView(
        child: _widgetList[_currentIndex],
      ),
      
      bottomNavigationBar: Container(
         decoration: BoxDecoration(
          color: Colors.white, // Background color under your navigation bar
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06), // Very subtle black shadow
              blurRadius: 12.0,                      // Softness of the shadow spread
              spreadRadius: 3.0,                     // Thickness of the shadow
              offset: const Offset(0, -4),           // Pushes shadow UP into the body screen
            ),
          ],
         ),
        child: Navigation(  
          myIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      )
    );
  }
}
