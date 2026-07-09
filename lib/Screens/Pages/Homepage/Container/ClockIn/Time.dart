import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  final bool isRunning;
  final Stopwatch controller;
  const Time({
    super.key,
    required this.isRunning,
    required this.controller
    });

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  void startStopwatch(Stopwatch stopwatch) {
    if (!widget.isRunning) {
      stopwatch.start();
      print("start");
    } else {
      stopwatch.stop();
      print("stop");
    }
  }

  String formatDuration(Duration duration){
    startStopwatch(Stopwatch());
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return "$hours:$minutes:$seconds";
  }

  @override 
  Widget build(BuildContext context) {
    return Text(
      formatDuration(Stopwatch().elapsed),
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color(0xFF2AAF56),
      ),
    );
  }
}