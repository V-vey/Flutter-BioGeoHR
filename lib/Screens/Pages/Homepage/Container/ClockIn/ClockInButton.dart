import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Controller/Homepage/LocationCheck.dart';
import '../../../../../Controller/Homepage/GetLocation.dart';
import '../../../../../Controller/Login/AuthStorage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../Controller/Homepage/Biometric.dart';
import 'Time.dart';

class Clockinbutton extends StatelessWidget {
  final AuthStorage authStorage = AuthStorage();
  final Biometric biometric = Biometric();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () async {
            print("--------------------------");
            biometric.checkBiometric();
            print("--------------------------");
            final prefs = await SharedPreferences.getInstance();
            String? val = prefs.getString("temp");
            getUserCoordinates();
            print(val);
          },

          child: Text("clock in"),
        ),
      ],
    );
  }
}
