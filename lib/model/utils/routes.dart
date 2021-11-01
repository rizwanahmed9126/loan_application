
import 'package:flutter/material.dart';
import 'package:loan/view/screens/home_screen.dart';
import 'package:loan/view/screens/identity_screen.dart';
import 'package:loan/view/screens/login_screen.dart';
import 'package:loan/view/screens/occuption_screen.dart';
import 'package:loan/view/screens/otp_screen.dart';
import 'package:loan/view/screens/signup_screen.dart';
import 'package:loan/view/screens/splash_screen.dart';
import 'package:loan/view/screens/welcome_screen.dart';

const splashScreenRoute = '/splash-screen';
const welcomeScreenRoute = '/Welcome-screen';
const loginScreenRoute = '/login-screen';
const signUpScreenRoute='/signup-screen';
const otpScreenRoute='/otp-screen';
const homeScreenRoute='/home-screen';
const identityScreenRoute='/identity-screen';
const occupationScreenRoute='/occupation-screen';

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

    case homeScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen());
    case identityScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => IdentityScreen());

    case occupationScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => OccupationScreen());



    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen());
  }
}
