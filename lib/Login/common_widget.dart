import 'package:flutter/material.dart';

class BackgroungImage extends StatelessWidget {
  const BackgroungImage({super.key});

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
    );
  }
}
