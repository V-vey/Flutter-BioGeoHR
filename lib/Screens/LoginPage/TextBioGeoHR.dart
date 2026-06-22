import 'package:flutter/material.dart';

class BioGeoHRLogo extends StatelessWidget {
  const BioGeoHRLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'BioGeo',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2AAF56),
              decoration: TextDecoration.underline,
              decorationColor: Color(0xFF6675EC),
            ),
          ),
          TextSpan(
            text: 'HR',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6675EC),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}