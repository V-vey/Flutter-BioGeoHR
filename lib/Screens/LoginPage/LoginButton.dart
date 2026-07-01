import 'package:flutter/material.dart';
import '../../../homepage.dart'; 

// screens get data
import '../LoginPage/TextBoxEmail.dart';
import '../LoginPage/TextBoxPassword.dart';

//process
import '../../Controller/LoginText.dart';

class Loginbutton extends StatelessWidget {
  final textEmail = TextboxEmail(); // calling for the function
  final textPassword = TextboxPassword();

  final login = Logintext();
  
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