import 'package:flutter/material.dart';

class TextboxPassword extends StatelessWidget {
  // const TextBox({super.key});
  final TextEditingController passwords = TextEditingController();
  late String password; 

  @override
  Widget build(BuildContext context) {
    var text = 
      
      SizedBox(
        width: 320,
        height: 40,
        child: TextFormField(
          controller: passwords,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3A3A3A)
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            hintStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFAEAEAE)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            border: OutlineInputBorder(),
            fillColor: Color(0xFFFCFCFC),
            hintText: "Enter your Password",
          ),
        ),
      );
    return text;
  }
  String getPassword(){
    password = passwords.text;
    return password;
  }
}