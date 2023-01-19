import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(children: [
              SizedBox(height: 70),
              new Image.asset(
                "assets/images/splashlogo.png",
                height: 76,
                width: 106,
              ),
            ])));
  }
}
