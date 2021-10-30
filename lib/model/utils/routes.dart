
import 'package:flutter/material.dart';
import 'package:loan/view/screens/splash_screen.dart';
import 'package:loan/view/screens/welcome_screen.dart';
const splashScreenRoute = '/splash-screen';
const welcomeScreenRoute = '/Welcome-screen';
const signUpScreenRoute = '/signup-screen';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case splashScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SplashScreen());

    case welcomeScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen());

    // case signUpScreenRoute:
    //   return MaterialPageRoute(
    //       builder: (BuildContext context) => SignupScreen());



    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen());
  }
}
