import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Controller/Homepage/ClockIn/LocationCheck.dart';
import '../../../../../Controller/Homepage/ClockIn/GetLocation.dart';
import '../../../../../Controller/Login/AuthStorage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../Controller/Homepage/ClockIn/Biometric.dart';
import 'Time.dart';
import 'dart:async';

class Clockinbutton extends StatelessWidget {
  final AuthStorage authStorage = AuthStorage();
  final Biometric biometric = Biometric();
  //Timer call back
  final VoidCallback timerStart;
  final VoidCallback timerReset;
  //Check if its runnning
  final bool isRunning;

  //status
  final VoidCallback statusActive;
  final VoidCallback statusInactive;
  Clockinbutton({
    super.key,
    required this.timerStart,
    required this.timerReset,
    required this.isRunning,
    required this.statusActive,
    required this.statusInactive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () async {
            getUserCoordinates();
            biometric.checkBiometric();

            timerStart();
            statusActive();
            if (isRunning == true) {
              authStorage.saveTime(false);
              timerReset();
              statusInactive();
            } else {
              authStorage.saveTime(true);
              timerStart();
              statusActive();
            }
            print("Time Value: $isRunning");

            print(isRunning);
          },

          child: Text("clock in"),
        ),
      ],
    );
  }
}
