import 'package:flutter/material.dart';
import 'TextBioGeoHR.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const BioGeoHRLogo(textSize: 24),
      actions: [
        TextButton(
          onPressed: () {
            print('You Got Log Out');
          },
          child: const Text(
            'Log-out',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 15,
              decoration: TextDecoration.underline,
              decorationColor: Color(0xFFEC6668),
              color: Color(0xFFEC6668),
            ),
          ),
        ),
      ],
    );
  }
}