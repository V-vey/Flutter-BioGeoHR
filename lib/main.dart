import 'package:flutter/material.dart';
import 'package:flutter_biogeohr/Screens/LoginPage/TextBoxPassword.dart';

//controller
import 'Controller/Login/LoginText.dart';

//Login Page
import 'Screens/Reusable/TextBioGeoHR.dart';
import 'Screens/LoginPage/TextBoxEmail.dart';
import 'Screens/LoginPage/TextBoxPassword.dart';
import 'Screens/LoginPage/LoginButton.dart';

//testin widget
import 'Testing/TestingButton.dart';

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final Logintext logintext = Logintext();

void main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 13,
            children: [
              //Login Screen
              BioGeoHRLogo(textSize: 48), // the logo
              // typable text
              TextboxEmail(controller: _emailController),

              // typable password
              TextboxPassword(controller: _passwordController),

              //THE Button
              Loginbutton(
                emailController: _emailController,
                passwordController: _passwordController,
                logintext: logintext,
              ),

              //JUST MEHH TESTING auto login to test@example.com user
              TestingButton(),
            ],
          ),
        ),
      ),
    ),
  );
}
