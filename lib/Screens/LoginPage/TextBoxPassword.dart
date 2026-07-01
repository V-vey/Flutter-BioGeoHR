import 'package:flutter/material.dart';

class TextboxPassword extends StatefulWidget {
  @override
  State<TextboxPassword> createState() => _TextboxPasswordState();
}

class _TextboxPasswordState extends State<TextboxPassword> {
  // const TextBoxEmail({super.key});
  final TextEditingController passwords = TextEditingController();

  String password = '';

  @override
  void dispose() {
    // Clean up the controller when the widget is destroyed to save memory
    passwords.dispose();
    super.dispose();
  }

  String getEmail() {
    password = passwords.text;
    return password;
  }

  @override
  Widget build(BuildContext context) {

    var text = 
    Container(
      width: 320,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFFCFCFC),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0x24000000),
          width: 2
        )
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        enableSuggestions: false,
        autocorrect: false,
        controller: passwords,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF3A3A3A),
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 9), 
          hintStyle: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0x31000000)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color(0x503A3A3A), // Changes border to green when focused
                width: 1.0,
              ),
          ),
          // border: OutlineInputBorder(),
          hintText: "Enter your Password",
          ),
        
        )
      );
    return text;
  }
}
