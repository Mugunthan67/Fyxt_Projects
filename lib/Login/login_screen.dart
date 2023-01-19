import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyxt/Services/api_integration.dart';
import 'package:http/http.dart' as http;
import '../Alert/alert_dialog.dart';
import '../Constants/api_constant.dart';
import '../Models/loginscreen_model.dart';
import 'common_widget.dart';

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

  // Future<bool?> EmailValidator(String? value, context) async {
  //   print("Step 1");
  //   String pattern =
  //       r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
  //       r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
  //       r"{0,253}[a-zA-Z0-9])?)*$";
  //   RegExp regex = RegExp(pattern);

  //   if (_emailController.text.isEmpty) {
  //     print("Step 2");
  //     await AlertDialogs.yesCancelDialog(context, "yes", "Enter the email");
  //   }
  //   // } else if (value.isNotEmpty) {
  //   //   print("Step3");
  //   //   await AlertDialogs.yesCancelDialog(context, "yes", "Enter the passsword");
  //   // }
  //    else if (_passwordController.text.isEmpty) {
  //     print("step3");
  //     await AlertDialogs.yesCancelDialog(
  //         context, "yes", "Enter the  Password");
  //    }
  //     else if(value !=regex)
  //      {
  //      print("step4");

  //    await AlertDialogs.yesCancelDialog(
  //        context, "yes", "cgf");
  //    }

  //   //  else if(_emailController.text != _passwordController.text) {
  //   //    print("step5");
  //   //   await AlertDialogs.yesCancelDialog(
  //   //       context, "yes", "Unable to login with provide credentials ");
  //   //  }

  //   // } else if (value != value) {
  //   //   print("step5");
  //   //   await AlertDialogs.yesCancelDialog(
  //   //       context, "yes", "Unable to login with provide crenditials");
  //   // }

  //   return false;
  // }
  Future<String?> validateCredentials(String email, String password) async {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);

    // Make a POST request to your server to validate the email and password
    var response = await http.post(Uri.parse(Constants.baseUrl),
        body: {'email': email, 'password': password});

    // Parse the JSON response
    var data = jsonDecode(response.body);
    if (_emailController.text.isEmpty) {
      print("Step 1");
      await AlertDialogs.yesCancelDialog(context, "yes", "Enter the email");
    }
    // } else if (value.isNotEmpty) {
    //   print("Step3");
    //   await AlertDialogs.yesCancelDialog(context, "yes", "Enter the passsword");
    // }
    else if (_passwordController.text.isEmpty) {
      print("step2");
      await AlertDialogs.yesCancelDialog(context, "yes", "Enter the  Password");
    }

    //Check if the validation was successful
    // else if (data['status'] != 'success') {
    //   return 'Validation successful';
    // }
    else {
      await AlertDialogs.yesCancelDialog(context, title, '${data['error']}');
      return ' ${data['error']}';
    }
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
               BackgroungImage(),
              new Center(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      new Image.asset(
                        "assets/images/splashlogo.png",
                        height: 76,
                        width: 106,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Welcome back!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Noto Sans'),
                      ),
                      SizedBox(height: 55),
                      Form(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: TextFormField(
                              cursorColor: Color.fromARGB(25, 44, 73, 1),
                              controller: _emailController,
                              //onSaved: (input) => loginRequestModel.email,
                              // onSaved: (input)=> requestModel.email = input,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 1),
                                filled: true,
                                fillColor: Colors.white,
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(118, 128, 146, 1),
                                    fontSize: 16),
                                hintText: "Username",
                              )),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.80,
                        child: TextFormField(
                            cursorColor: Color.fromARGB(25, 44, 73, 1),
                            obscureText: true,
                            controller: _passwordController,
                            //onSaved: (input) => loginRequestModel.email,
                            // onSaved: (input)=> requestModel.email = input,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              //focusedBorder: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 1),
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(118, 128, 146, 1),
                                  fontSize: 16),
                              hintText: "Password",
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ListTileTheme(
                        contentPadding: EdgeInsets.only(left: 7),
                        child: CheckboxListTile(
                          side: MaterialStateBorderSide.resolveWith((states) =>
                              BorderSide(width: 2.0, color: Colors.white)),
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                          title: Transform.translate(
                            offset: Offset(-20, 0),
                            child: RichText(
                                text: TextSpan(
                                    text: "Remember me",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Noto Sans',
                                        fontSize: 16))),
                          ),

                          // Text(
                          //   "Remember me",
                          //   style: TextStyle(
                          //       color: Colors.white,
                          //       fontFamily: "Noto Sans",
                          //       fontSize: 18,
                          //       fontWeight: FontWeight.normal),
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.80,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color.fromRGBO(245, 86, 0, 1),
                                minimumSize: Size(270, 40)),
                            onPressed: () async {
                              await validateCredentials(_emailController.text,
                                  _passwordController.text);
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
                                    Navigator.of(context)
                                        .pushNamed('/environment');
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Or",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.80,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color.fromRGBO(245, 86, 0, 1),
                                minimumSize: Size(270, 40)),
                            onPressed: () async {},
                            child: Text(
                              "Log In With SSO",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                      ),
                      SizedBox(
                        height: 105,
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
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.normal),
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
