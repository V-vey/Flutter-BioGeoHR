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
  const Homepage({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 218, 218),
      appBar: const Header(),
      
      body: SingleChildScrollView(
        child: _widgetList[_currentIndex],
      ),

      bottomNavigationBar: Navigation(
        myIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
