import 'package:flutter/material.dart';
import 'screens/TestingScreen.dart';
import 'Service/employee_service.dart';
import 'Screens/LoginPage/TextBioGeoHR.dart';
import 'Screens/LoginPage/TextBox.dart';
import 'Screens/LoginPage/LoginButton.dart';

void main(){
  
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Roboto',
    ),
    home: 
    Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 218, 218),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              BioGeoHRLogo(),
              SizedBox(height: 13),
              Textbox(),
              SizedBox(height: 13),
              Textbox(),
              SizedBox(height: 13),
              Loginbutton(),
          ],
        ),
      ),
    ),
  ));
} 