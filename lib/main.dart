import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Screens/LoginPage/TextBoxPassword.dart';
import 'Service/employee_service.dart';

//controller
import 'Controller/LoginText.dart';

//Reusable
import 'Screens/Reusable/Header.dart';

//Login Page
import 'Screens/Reusable/TextBioGeoHR.dart';
import 'Screens/LoginPage/TextBoxEmail.dart';
import 'Screens/LoginPage/TextBoxPassword.dart';
import 'Screens/LoginPage/LoginButton.dart';

//testin widget
import 'Screens/Reusable/Navigation.dart';
import 'Controller/testing.dart';
import 'Testing/TestingButton.dart';

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final Logintext logintext = Logintext();

void main(){

  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Roboto',
    ),
    home: 
    Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [ //Login Screen
              BioGeoHRLogo(textSize: 48,),
              SizedBox(height: 13),
              TextboxEmail(controller: _emailController),
              SizedBox(height: 13),
              TextboxPassword(controller: _passwordController),
              SizedBox(height: 13),
              Loginbutton(
                emailController: _emailController,
                passwordController: _passwordController,
                logintext: logintext,
              ),
              SizedBox(height: 13),
              TestingButton(),     
          
          ],
        ),
      ),
    ),
  ));
} 