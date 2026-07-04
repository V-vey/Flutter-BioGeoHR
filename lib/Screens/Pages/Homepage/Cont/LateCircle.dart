import 'package:flutter/material.dart';

class LateCircle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //SOON The Circle Should be an arc
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xFFEACA3A),
          width: 10
        )
      ),
    );
  }
}