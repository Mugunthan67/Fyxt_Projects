import 'package:flutter/material.dart';
import 'package:fyxt/Services/api_integration.dart';

import '../Alert/alert_dialog.dart';
import '../Models/loginscreen_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginRequestModel loginRequestModel;
  bool value = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future<bool> EmailValidator(String? value, context) async {
    print("Step 1");
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);

    if (value == "") {
      print("Step 2");
      await AlertDialogs.yesCancelDialog(context, "yes", "Enter the email");
    }
    // else if (!regex.hasMatch(value!))
    // {
    //   await AlertDialogs.yesCancelDialog(
    //       context, "yes", "Enter the valid email");
    // }

    return false;
  }

  String title = 'AlertDialog';
  bool tappedYes = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(children: <Widget>[
              new Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover)),
              ),
              new Center(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      new Image.asset(
                        "assets/images/splashlogo.png",
                        height: 76,
                        width: 106,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Noto Sans'),
                      ),
                      SizedBox(height: 15),
                      Form(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: TextFormField(
                              controller: _emailController,
                              //onSaved: (input) => loginRequestModel.email,
                              // onSaved: (input)=> requestModel.email = input,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 1),
                                filled: true,
                                fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(118, 128, 146, 1),
                                    fontSize: 12),
                                hintText: "Username",
                              )),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: TextFormField(
                            obscureText: true,
                            controller: _passwordController,
                            //onSaved: (input) => loginRequestModel.email,
                            // onSaved: (input)=> requestModel.email = input,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(vertical: 1),
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(118, 128, 146, 1),
                                  fontSize: 12),
                              hintText: "Password",
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 350,
                        child: CheckboxListTile(
                          side: BorderSide(color: Colors.white),
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                          title: Text(
                            "Remember me",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Noto Sans",
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(245, 86, 0, 1),
                              minimumSize: Size(270, 40)),
                          onPressed: () async {
                            await EmailValidator(
                                _emailController.text, context);
                            ApiIntergration apiIntergration =
                                new ApiIntergration();
                            apiIntergration
                                .login(loginRequestModel =
                                    new LoginRequestModel(
                                        email: _emailController.text,
                                        password: _passwordController.text,
                                        passowrd: ''))
                                .then((value) {
                              if (value != null) {
                                setState(() {
                                  print('Not Empty');
                                });
                                if (value.token.isNotEmpty) {
                                  Navigator.of(context).pushNamed('/teams');
                                }
                              }
                            });
                          },
                          //   final action = await AlertDialogs.yesCancelDialog(
                          //       context, title, 'Please enter email');
                          //   if (action == DialogsAction.ok) {
                          //     setState(() {
                          //       tappedYes = true;
                          //     });
                          //   }
                          // },
                          child: Text(
                            "Log in",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                      SizedBox(height: 10),
                      Text(
                        "or",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(245, 86, 0, 1),
                              minimumSize: Size(270, 40)),
                          onPressed: () async {},
                          child: Text(
                            "Log In With SSO",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                      SizedBox(
                        height: 130,
                      ),
                      TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/forgot_password');
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ])));
  }
}

class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({required this.title, this.value = false});
}
