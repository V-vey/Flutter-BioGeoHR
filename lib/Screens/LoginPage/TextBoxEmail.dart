import 'package:flutter/material.dart';

class TextboxEmail extends StatelessWidget {
  // const TextBoxEmail({super.key});
  final TextEditingController emails = TextEditingController();
  late String email;
  @override
  Widget build(BuildContext context) {

    var text = 
      SizedBox(
        width: 320,
        height: 40,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          enableSuggestions: false,
          autocorrect: false,
          controller: emails,
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
            hintText: "Enter your Email",
          ),
        ),
      );
    return text;
  }
  String getEmail(){
    email = emails.text;
    return email;
  }
}
