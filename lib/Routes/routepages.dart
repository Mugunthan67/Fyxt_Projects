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
        // return MaterialPageRoute(builder: (_) =>ForgotScrn());
      // case '/Backto_login':
      //   return MaterialPageRoute(builder: (_) =>Backtoscrn(Value: 'value',));
      // case '/my_log':
      //   return MaterialPageRoute(builder: (_) =>MyLogn(Value: 'value',));
      // case '/job_rq':
      //   return MaterialPageRoute(builder: (_) =>JobActy(Value: 'value',));
      // case '/personal_profile':
      //   return MaterialPageRoute(builder: (_) =>PersonalDetail(Value: 'value',));
      default:
        return MaterialPageRoute(builder: (_)=>LoginForm(title: '',)); 
    }
  }
}