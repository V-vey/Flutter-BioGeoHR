import 'package:flutter/material.dart';
//Reusable
import 'Screens/Reusable/Header.dart';
import 'Screens/Reusable/Navigation.dart';

//Homepage
import 'Screens/Pages/Homepage/LeaveBalance.dart';
import 'Screens/Pages/Homepage/Payroll.dart';

//Pages
import 'Screens/Pages/Home.dart';
import 'Screens/Pages/Attendance.dart';
import 'Screens/Pages/Leave.dart';
import 'Screens/Pages/Profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  int _currentIndex = 0;
  final List<Widget> _widgetList = [
    Home(),
    Text('Attendance'),
    Text ('Leave'),
    Text('Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 218, 218),
      appBar: const Header(),
      
      body: Center(
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
