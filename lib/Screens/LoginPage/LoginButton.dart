import 'package:flutter/material.dart';
class Loginbutton extends StatelessWidget {

  @override
  Widget build(BuildContext context){

  var button = 
    SizedBox(
      width: 320,
      height: 40,
      child: 
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF2AAF56), // Sets the background color
          foregroundColor: Colors.white, // Sets the text and icon color
        ),
          onPressed: (){
            print('Fuck You!!');
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