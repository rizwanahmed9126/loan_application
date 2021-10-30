import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  var navigationService = locator<NavigationService>();

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 2), (timer) {
      navigationService.navigateTo(welcomeScreenRoute);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2024),
      body: Container(

      ),
    );
  }
}


