import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_biogeohr/Screens/Pages/Homepage/Container/ClockIn/ClockInButton.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

void start() {}

class _TimeState extends State<Time> {
  @override
  Duration duration = Duration();
  Timer? timer;
  bool? isRunning;

  @override
  void initState() {
    super.initState();
  }

  void addTimer() {
    setState(() {
      final seconds = duration.inSeconds + 1;

      duration = Duration(seconds: seconds);
    });
  }

  //call to start
  void start() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTimer());
  }

  //call to Reset
  void reset() {
    setState(() {
      duration = Duration();
    });
  }

  @override
  void dispose() {
    timer?.cancel(); // Always clean up your timer to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Format DIGITS
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final hrs = twoDigits(duration.inHours);
    final min = twoDigits(duration.inMinutes.remainder(60));
    final sec = twoDigits(duration.inSeconds.remainder(60));

    return Row(
      children: [
        Text(
          "$hrs:$min:$sec",
          style: TextStyle(
            color: Color(0xFF3A3A3A),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        Spacer(),
        Clockinbutton(timerStart: start, timerReset: reset),
      ],
    );
  }
}
