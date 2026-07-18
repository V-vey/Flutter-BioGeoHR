import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Controller/Homepage/ClockIn/LocationCheck.dart';
import '../../../../../Controller/Homepage/ClockIn/GetLocation.dart';
import '../../../../../Controller/Login/AuthStorage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../Controller/Homepage/ClockIn/Biometric.dart';
import 'Time.dart';

class Clockinbutton extends StatelessWidget {
  final AuthStorage authStorage = AuthStorage();
  final Biometric biometric = Biometric();
  //Timer call back
  final VoidCallback timerStart;
  final VoidCallback timerReset;

  Clockinbutton({
    super.key,
    required this.timerStart,
    required this.timerReset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            String? val = prefs.getString("temp"); // location
            getUserCoordinates();
            biometric.checkBiometric();
            timerStart();
            // //cicle of timer true and false
            // authStorage.getTime().then((value) {
            //   if (value == true) {
            //     authStorage.saveTime(false);
            //   } else {
            //     timerKey.currentState?.initState();
            //     authStorage.saveTime(true);
            //   }
            //   timerKey.currentState?.initState();
            //   print("Time Value: $value");
            // });

            print(val);
          },

          child: Text("clock in"),
        ),
      ],
    );
  }
}
