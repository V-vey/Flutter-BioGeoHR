import 'package:flutter/material.dart';
import '../../../../../Controller/Homepage/GetLocation.dart';
import '../../../../../Controller/Login/AuthStorage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Clockinbutton extends StatelessWidget{

  final AuthStorage authStorage = AuthStorage();

  

  @override
  Widget build(BuildContext context) {
  
    
    return 
    TextButton(   
      onPressed: ()  async {
        final prefs = await SharedPreferences.getInstance();
        String? val = prefs.getString("temp");
        print(val);
      },
      
      child: Text("clock in")
    );
  }
}