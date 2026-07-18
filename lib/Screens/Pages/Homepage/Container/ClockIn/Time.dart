import 'dart:async';

import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final stopwatch = Stopwatch();

  Duration duration = Duration();
  Timer? timer;
  bool isCountdown = true;

  @override
  void initState() {
    super.initState();

    startTimer();
    // reset();
  }

  void addTimer() {
    setState(() {
      final seconds = duration.inSeconds + 1;

      duration = Duration(seconds: seconds);
    });
  }

  //call to start
  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTimer());
  }

  //call to Reset
  void reset() {
    setState(() {
      duration = Duration();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // Format DIGITS
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final hrs = twoDigits(duration.inHours);
    final min = twoDigits(duration.inMinutes.remainder(60));
    final sec = twoDigits(duration.inSeconds.remainder(60));

    return Column(
      children: [
        Text("$hrs:$min:$sec"),
        ElevatedButton(
          onPressed: () {
            // startTimer();
            reset();
          },
          child: Text("button Test"),
        ),
      ],
    );
  }
}
