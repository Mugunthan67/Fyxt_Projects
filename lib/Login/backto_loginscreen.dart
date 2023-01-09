import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BacktoScreen extends StatefulWidget {
  final String Value;
  const BacktoScreen({Key? key, required this.Value}) : super(key: key);
  @override
  State<BacktoScreen> createState() => _BacktoScreenState();
}

class _BacktoScreenState extends State<BacktoScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, true);
              //Navigator.of(context).pushNamed('/forgot_password');
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
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
                  SizedBox(height: 100.2),
                  new Image.asset(
                    "assets/images/splashlogo.png",
                    height: 76,
                    width: 106,
                  ),
                  SizedBox(height: 95.2),
                  Text(
                    "Thanks!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    textAlign: TextAlign.center,
                    "You should receive an email in a few moments. \n" +
                        "Please open that link to reset your password.",
                    style: TextStyle(
                      color: Color.fromRGBO(118, 128, 146, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "${widget.Value}",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  /*Text(
                    "@email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    ),*/

                  SizedBox(height: 22),
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
                  SizedBox(height: 7),
                  TextButton(
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/forgot_password');
                      },
                      child: Text(
                        "Resend Email?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
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

void main() => runApp(const BacktoScreen(
      Value: '',
    ));
