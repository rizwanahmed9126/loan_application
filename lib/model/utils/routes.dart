
import 'package:flutter/material.dart';
import 'package:loan/view/screens/login_screen.dart';
import 'package:loan/view/screens/otp_screen.dart';
import 'package:loan/view/screens/signup_screen.dart';
import 'package:loan/view/screens/splash_screen.dart';
import 'package:loan/view/screens/welcome_screen.dart';

const splashScreenRoute = '/splash-screen';
const welcomeScreenRoute = '/Welcome-screen';
const loginScreenRoute = '/login-screen';
const signUpScreenRoute='/signup-screen';
const otpScreenRoute='/otp-screen';
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case splashScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SplashScreen());

    case welcomeScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen());

    case loginScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen());
    case signUpScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SignUpScreen());

    case otpScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => otpScreen());



    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen());
  }
}
