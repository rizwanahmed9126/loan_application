
import 'package:flutter/material.dart';
import 'package:loan/view/screens/dashboard_screen.dart';
import 'package:loan/view/screens/dashboard_screen_1.dart';
import 'package:loan/view/screens/dashboard_screen_2.dart';
import 'package:loan/view/screens/dashboard_screen_3.dart';
import 'package:loan/view/screens/dashboard_screen_4.dart';
import 'package:loan/view/screens/dashboard_screen_5.dart';
import 'package:loan/view/screens/home_notifications.dart';
import 'package:loan/view/screens/home_screen.dart';
import 'package:loan/view/screens/identity_screen.dart';
import 'package:loan/view/screens/initial_payment.dart';
import 'package:loan/view/screens/login_screen.dart';
import 'package:loan/view/screens/method_screen.dart';
import 'package:loan/view/screens/occuption_screen.dart';
import 'package:loan/view/screens/otp_screen.dart';
import 'package:loan/view/screens/pending_status.dart';
import 'package:loan/view/screens/reference_screen.dart';
import 'package:loan/view/screens/request_loan.dart';
import 'package:loan/view/screens/send_payment_screen.dart';
import 'package:loan/view/screens/signup_screen.dart';
import 'package:loan/view/screens/splash_screen.dart';
import 'package:loan/view/screens/success_screen.dart';
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
const statusScreenRoute='/status-screen';
const sendPaymentScreenRoute='/send-payment-screen';
const pendingStatusScreenRoute='/pending-status-screen';
const dashboardScreen1Route='/dashboard-screen1';
const dashboardScreen2Route='/dashboard-screen2';
const dashboardScreen3Route='/dashboard-screen3';
const dashboardScreen5Route='/dashboard-screen5';
const homeNotificationScreenRoute='/home-notifications-screen';
const requestLoanScreenRoute='/request-loan-screen';
const dashboardScreen4Route='/dashboard-screen-4';
const dashboardRoute='/dashboard';

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

    case statusScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => StatusScreen());

    case sendPaymentScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SendPaymentScreen());


    case pendingStatusScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => PendingStatusScreen());

    case dashboardScreen1Route:
      return MaterialPageRoute(
          builder: (BuildContext context) => DashboardScreen1());

    case dashboardScreen2Route:
      return MaterialPageRoute(
          builder: (BuildContext context) => DashboardScreen2());

    case dashboardScreen3Route:
      return MaterialPageRoute(
          builder: (BuildContext context) => DashboardScreen3());


    case dashboardScreen5Route:
      return MaterialPageRoute(
          builder: (BuildContext context) => DashboardScreen5());


    case homeNotificationScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => HomeNotificationsScreen());


    case requestLoanScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => RequestLoanScreen());

    case dashboardScreen4Route:
      return MaterialPageRoute(
          builder: (BuildContext context) => DashboardScreen4());

    case dashboardRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => Dashboard());

    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen());
  }
}
