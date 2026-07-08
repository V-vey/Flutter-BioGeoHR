import 'package:flutter/material.dart';
import '../../../homepage.dart'; 

// screens get data
import '../LoginPage/TextBoxEmail.dart';
import '../LoginPage/TextBoxPassword.dart';

//process
import '../../Controller/LoginText.dart';

class Loginbutton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Logintext logintext;

  Loginbutton({
    super.key,
    required this.emailController,
    required this.passwordController, 
    required this.logintext, 
  });


  @override
  Widget build(BuildContext context){
    
  var button = 
  
    SizedBox(
      width: 220,
      height: 40,
      child: 
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF2AAF56), // Sets the background color
          foregroundColor: Colors.white, // Sets the text and icon color
        ),
          onPressed: () async{
            
            //uncomment to use login function

            // bool isSuccessful = await logintext.login(
            //   emailController.text, 
            //   passwordController.text
            // );
            // print("Login successful: $isSuccessful");

            // if (isSuccessful) {
            //   // Login successful, navigate to the next screen
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => Homepage(),
            //     ),
            //   );
            // } else {
            //   // Login failed, show an error message
            //   ScaffoldMessenger.of(context).showSnackBar(
            //     SnackBar(content: Text('Login failed. Please check your credentials.')),
            //   );
            // }

            //just to access easily
            Navigator.push(
            context,
              MaterialPageRoute(
                builder: (context) => Homepage(),
              ),
            );

          }, 
        child: Text('Log-in',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: Colors.white
          ),
        ),
      ),
    )
  ;
  return button;
  }
}