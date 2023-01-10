import 'package:flutter/material.dart';
import 'package:fyxt/Login/backto_loginscreen.dart';
import 'package:fyxt/Login/forgot_screen.dart';
import 'package:fyxt/Login/login_screen.dart';
import 'package:fyxt/Routing/routeanimation.dart';
import 'package:fyxt/Sample/sample_screen.dart';

class RouteGenerator {
  //static get arguments => null;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/login':
        // return PageRouteAnimation(child:LoginForm(), settings:settings,direction: AxisDirection.right);
        return MaterialPageRoute(
            builder: (_) => LoginScreen(
                  title: '',
                ));
      case '/forgot_password':
        return PageRouteAnimation(
            child: ForgotScreen(
              title: '',
            ),
            settings: settings,
            direction: AxisDirection.left);
      case '/backtologin':
        // return PageRouteAnimation(child:LoginForm(), settings:settings,direction: AxisDirection.right);
        return MaterialPageRoute(
            builder: (_) => BacktoScreen(
                  Value: '',
                ));
      case '/teams':
        // return PageRouteAnimation(child:LoginForm(), settings:settings,direction: AxisDirection.right);
        return MaterialPageRoute(builder: (_) => TeamScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => LoginScreen(
                  title: '',
                ));
    }
  }
}
