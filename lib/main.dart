import 'package:flutter/material.dart';
import 'package:fyxt/Routes/routepages.dart';




void main() {
  runApp( MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    onGenerateRoute: RouteGenerator.generateRoute,

    );
  }
}
// import 'package:flutter/material.dart';
// //import 'package:flutter/src/foundation/key.dart';
// //import 'package:flutter/src/widgets/framework.dart';


// class LoginForm extends StatefulWidget {
//   const LoginForm({Key? key}) : super(key: key);

//   @override
//   State<LoginForm> createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
 
//   TextEditingController _emailTEc = TextEditingController();
//   TextEditingController _paswrd = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     //
//   }

 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: Stack(
//           children: <Widget>[
//             new Container(
//               decoration: new BoxDecoration(
//                 image: new DecorationImage(
//                   image: new ExactAssetImage("assets/images/background.png"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             new Center(
//                 child: Padding(
//               padding: EdgeInsets.all(25),
//               child: Column(
//                 children: [
//                   SizedBox(height: 80),
//                   new Image.asset(
//                     "assets/images/splash.png",
//                     height: 76,
//                     width: 106,
//                   ),
//                   SizedBox(height: 70),
//                   Text(
//                     "Welcome Back!",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     child: TextFormField(
//                         controller: _emailTEc,
//                        // onSaved: (input) => loginRequestModel.email,
//                         // onSaved: (input)=> requestModel.email = input,
//                         textAlign: TextAlign.center,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           contentPadding: EdgeInsets.symmetric(vertical: 1),
//                           filled: true,
//                           fillColor: Colors.white,
//                           hintStyle: TextStyle(
//                               color: Color.fromRGBO(118, 128, 146, 1),
//                               fontSize: 12),
//                           hintText: "Username",
//                         )),
//                   ),
//                   SizedBox(height: 17),
//                   Container(
//                     child: TextFormField(
//                       controller: _paswrd,
//                      // onSaved: (input) => loginRequestModel.password,
//                       textAlign: TextAlign.center,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         contentPadding: EdgeInsets.symmetric(
//                           vertical: 10,
//                         ),
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintStyle: TextStyle(
//                             color: Color.fromRGBO(118, 128, 146, 1),
//                             fontSize: 12),
//                         hintText: "Password",
//                       ),
//                       obscureText: true,
//                     ),
//                   ),
//                   SizedBox(height: 17),
//                   TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor: Color.fromRGBO(245, 86, 0, 1),
//                           minimumSize: Size(333, 40)),
//                       onPressed: () async {
                        

//                         // await storage.write(key: "token", value: _emailTEc.text);
//                         // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()), (route) => false);
//                         //Navigator.of(context).pushNamed('/my_log');
//                         // final action = await AlertDialogs.yesCancelDialog(context,'ok','Please enter email',);
//                       },
//                       child: Text(
//                         "Log in",
//                         style: TextStyle(color: Colors.white, fontSize: 12),
//                       )),
//                   SizedBox(height: 110),
//                   TextButton(
//                       style: ButtonStyle(
//                         overlayColor:
//                             MaterialStateProperty.all(Colors.transparent),
//                       ),
//                       onPressed: () {
//                         Navigator.of(context).pushNamed('/forgot_password');
//                       },
//                       child: Text(
//                         "Forgot Password?",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                         ),
//                       )),
//                 ],
//               ),
//                 )
//             )
//           ]
//         )
//             ));
 
// }

// void main() => runApp(const LoginForm());
// }