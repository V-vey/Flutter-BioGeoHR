import 'package:flutter/material.dart';
//Reusable
import 'Screens/Reusable/Header.dart';
import 'Screens/Reusable/Navigation.dart';

//Homepage
import 'Screens/Homepage/Attendance.dart';
import 'Screens/Homepage/LeaveBalance.dart';
import 'Screens/Homepage/Payroll.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  int _currentIndex = 0;
  final List<Widget> _widgetList = [
    Container(
      width: 100,
      height: 20,
      color: Colors.green,
    ),
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
