import 'package:flutter/material.dart';

import 'common_widget.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              BackgroungImage(),
              new Center(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      SizedBox(height: 80),
                      new Image.asset(
                        "assets/images/splashlogo.png",
                        height: 76,
                        width: 106,
                      ),
                      SizedBox(height: 134.2),
                      Text(
                        "Success!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 11),
                      Text(
                        textAlign: TextAlign.center,
                        "Your password has been reset.",
                        style: TextStyle(
                          color: Color.fromRGBO(118, 128, 146, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.orange[900],
                              minimumSize: Size(333, 40)),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/login');
                          },
                          child: Text(
                            "Back to Log in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

void main() => runApp(const SuccessScreen());
