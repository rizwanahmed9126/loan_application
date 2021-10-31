import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/model/models/constants/constants.dart';
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
    WidgetsBinding.instance?.addPostFrameCallback((_){

      Timer(Duration(seconds: 3), () async {
        navigationService.navigateTo(welcomeScreenRoute);
      });

    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBlack,
      body: Container(
        child: Center(
          child: Container(
            child: Image.asset('assets/images/Group 1.png'),
          ),
        ),

      ),

    );
  }
}
