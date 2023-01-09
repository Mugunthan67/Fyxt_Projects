import 'package:flutter/material.dart';



class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.title});

 

  final String title;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool value =false;
  // final allChecked = CheckBoxModal(title:'Remember me');
  // final checkBoxList = [
  //   CheckBoxModal(title:'checkBox 1')
  // ];
TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: <Widget>[
          new Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover
            )
            ),
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
                      fontFamily: 'Noto Sans'
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.75,
                    child: TextFormField(
                        controller: _emailController,
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
                          hintText: "Username",
                        )),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.75,
                    child: TextFormField(
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
                  SizedBox(height: 10,),
                  Container(
                   height: 40,
                   width: 350,
                  child:  CheckboxListTile(
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
                    title:  Text("Remember me",style: TextStyle(color: Colors.white,
                      fontFamily: "Noto Sans",
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                      ),
                      ),
                      ),
                    
                  ),
                  
                 
                  SizedBox(height: 15,),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(245, 86, 0, 1),
                          minimumSize: Size(240, 40)),
                      onPressed: () async {
                        
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  SizedBox(height: 10),
                  Text("or",style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(245, 86, 0, 1),
                          minimumSize: Size(240, 40)),
                      onPressed: () async {
                        
                      },
                      child: Text(
                        "Log In With SSO",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                      SizedBox(height: 80,),
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
                          fontSize: 12,
                        ),
                      )),
                  ],
                ),
              ),
            )
        ]
        )
      )
            );
   
  }
}

class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({required this.title,this.value=false});
}
