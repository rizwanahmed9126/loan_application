
import 'package:flutter/material.dart';
import 'package:loan/view/screens/home_screen.dart';
import 'package:loan/view/screens/identity_screen.dart';
import 'package:loan/view/screens/initial_payment.dart';
import 'package:loan/view/screens/login_screen.dart';
import 'package:loan/view/screens/method_screen.dart';
import 'package:loan/view/screens/occuption_screen.dart';
import 'package:loan/view/screens/otp_screen.dart';
import 'package:loan/view/screens/reference_screen.dart';
import 'package:loan/view/screens/signup_screen.dart';
import 'package:loan/view/screens/splash_screen.dart';
import 'package:loan/view/screens/welcome_screen.dart';
import 'package:loan/view/screens/work_screen.dart';

const splashScreenRoute = '/splash-screen';
const welcomeScreenRoute = '/Welcome-screen';
const loginScreenRoute = '/login-screen';
const signUpScreenRoute='/signup-screen';
const otpScreenRoute='/otp-screen';
const homeScreenRoute='/home-screen';
const identityScreenRoute='/identity-screen';
const occupationScreenRoute='/occupation-screen';
const workScreenRoute='/work-screen';
const referencesScreenRoute='/reference-screen';
const initialPaymentScreenRoute='/initial-screen';
const methodScreenRoute='/method-screen';

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

    case workScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WorkScreen());
    case referencesScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => ReferenceScreen());

    case initialPaymentScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => InitialPaymentScreen());

    case methodScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => MethodScreen());



    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen());
  }
}
