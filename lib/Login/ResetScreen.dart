import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
                  SizedBox(height: 95.2),
                  Text(
                    "Reset Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    textAlign: TextAlign.center,
                    "Please enter your new password.",
                    style: TextStyle(
                      color: Color.fromRGBO(118, 128, 146, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(118, 128, 146, 1),
                              fontSize: 12),
                        )),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(118, 128, 146, 1),
                              fontSize: 12),
                        )),
                  ),
                  SizedBox(height: 17),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.orange[900],
                          minimumSize: Size(333, 40)),
                      onPressed: () {
                        // Navigator.of(context).pushNamed('/Sucess_scrn');
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const ResetScreen());
