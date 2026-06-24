import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  final String text;
  const Textbox({
    super.key,
    required this.text,
  });
  // const TextBox({super.key});
  @override
  Widget build(BuildContext context) {
    var text = 
      
      SizedBox(
        width: 320,
        height: 40,
        child: TextFormField(
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
            hintText: this.text,
          ),
        ),
      );
    return text;
  }
}