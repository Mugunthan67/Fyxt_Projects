import 'package:flutter/material.dart';
import 'package:fyxt/Login/backto_loginscreen.dart';

import '../Alert/alert_dialog.dart';
import 'common_widget.dart';

class EnvironmentScreen extends StatefulWidget {
  const EnvironmentScreen({super.key, required this.title});

  final String title;

  @override
  State<EnvironmentScreen> createState() => _EnvironmentScreenState();
}

class _EnvironmentScreenState extends State<EnvironmentScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            body: Stack(children: <Widget>[
                BackgroungImage(),
              new Center(
                  child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(children: [
                        SizedBox(height: 95),
                        new Image.asset(
                          "assets/images/splashlogo.png",
                          height: 76,
                          width: 106,
                        ),
                        SizedBox(height: 80),
                        Text(
                          "Environment",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Noto Sans'),
                        ),
                        SizedBox(height: 15),
                        Text(
                          textAlign: TextAlign.center,
                          "Choose which environment you want to enter ",
                          style: TextStyle(
                            color: Color.fromRGBO(118, 128, 146, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 90,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  width: 160,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.orange),

                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,

                                    //  border:
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Krishna',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(245, 86, 0, 1),
                                  minimumSize: Size(300, 40)),
                              onPressed: () async {},
                              child: Text(
                                "Enter",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )),
                        )
                      ])))
            ])));
  }
}

void main() => runApp(const EnvironmentScreen(
      title: '',
    ));
