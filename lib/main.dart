import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Screens/LoginPage/TextBoxPassword.dart';
import 'screens/TestingScreen.dart';
import 'Service/employee_service.dart';

//Reusable
import 'Screens/Reusable/Header.dart';

//Login Page
import 'Screens/Reusable/TextBioGeoHR.dart';
import 'Screens/LoginPage/TextBoxEmail.dart';
import 'Screens/LoginPage/TextBoxPassword.dart';
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
          children: [ //Login Screen
              BioGeoHRLogo(textSize: 48,),
              SizedBox(height: 13),
              TextboxEmail(),
              SizedBox(height: 13),
              TextboxPassword(),
              SizedBox(height: 13),
              Loginbutton(),
          ],
        ),
      ),
    ),
  ));
} 