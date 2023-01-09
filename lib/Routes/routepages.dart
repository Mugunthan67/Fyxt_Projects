import 'package:flutter/material.dart';
import 'package:fyxt/Login/forgot_screen.dart';
import 'package:fyxt/Login/login_screen.dart';
import 'package:fyxt/Routes/routeanimation.dart';



class RouteGenerator {

  //static get arguments => null;

  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;
    

    switch(settings.name) {
      case '/login':
       // return PageRouteAnimation(child:LoginForm(), settings:settings,direction: AxisDirection.right);
        return MaterialPageRoute(builder: (_)=>LoginForm(title: '',));
      case '/forgot_password':
        return PageRouteAnimation(child:ForgotScreen(title: '',), settings:settings,direction: AxisDirection.left);
       
      default:
        return MaterialPageRoute(builder: (_)=>LoginForm(title: '',)); 
    }
  }
}