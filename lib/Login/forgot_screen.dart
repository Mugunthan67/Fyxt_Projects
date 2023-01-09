import 'package:flutter/material.dart';



class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key, required this.title});

 

  final String title;

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool value =false;
  // final allChecked = CheckBoxModal(title:'Remember me');
  // final checkBoxList = [
  //   CheckBoxModal(title:'checkBox 1')
  // ];
TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
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
                  SizedBox(height: 80),
                  new Image.asset(
                    "assets/images/splashlogo.png",
                    height: 76,
                    width: 106,
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Noto Sans'
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    textAlign: TextAlign.center,
                    "Enter your email and we'll send you \n" +
                        "a link to reset your password",
                    style: TextStyle(
                      color: Color.fromRGBO(118, 128, 146, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  
                  SizedBox(height: 30),
                  Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.85,
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
                          hintText: "Email",
                        )),
                  ),
                  
                  
                 
                  SizedBox(height: 15,),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(245, 86, 0, 1),
                          minimumSize: Size(270, 40)),
                      onPressed: () async {
                        
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
