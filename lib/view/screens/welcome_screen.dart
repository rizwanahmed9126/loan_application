import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  var navigationService = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: sBlack,
      body: Stack(


        children: [

          Positioned(
            bottom: -10,
              left: 55,
              //right: 0,

              child: Container(
                //height: 300,
                  child: Image.asset('assets/images/hand.png')
              )
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    child: Text('LOREMBANK',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 17,letterSpacing: 3)),
                  ),
                  SizedBox(height: height*0.05,),
                  Container(
                    child: Text('Low Interest Loans',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 21,letterSpacing: 3)),
                  ),
                ],
              ),

              Container(
                height: height*0.3,
                  //width: width*0.4,
                  child: Text(
                    'Loans at the \ntip of your \nfingers',
                    style: GoogleFonts.montserrat(fontSize: 40,color: Colors.white,letterSpacing: 3),
                  )
              ),
              Column(
                children: [
                  button(
                    height: height*0.08,
                    width: width*0.49,
                    onTap: (){

                      navigationService.navigateTo(loginScreenRoute);
                    },
                    txt: 'Get Started'
                  ),

                  SizedBox(height: height*0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(fontSize: 17,color: Colors.white),
                      ),
                      Text(
                        'Log In',
                        style: TextStyle(fontSize: 17,color: sSky),
                      ),
                    ],
                  ),
                ],
              ),

            ],

          ),
        ],
      ),
    );
  }
}
