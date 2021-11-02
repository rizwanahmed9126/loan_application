import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/screens/login_screen.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class otpScreen extends StatefulWidget {
  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {

  var navigationService = locator<NavigationService>();

  final TextEditingController _otpController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: sBlack,
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
              top: height*0.22,
              right: -5,

              child: Container(
                //height: 300,
                  child: Image.asset('assets/images/Ellipse 6.png')
              )
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: height*0.02,),
              Text('Phone Verification',style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white,letterSpacing: 2),),
              //SizedBox(height: height*0.05,),
              Container(
                  width: width*0.8,
                  child: Text('We have sent a verification code to',textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 14,color: Colors.white,letterSpacing: 2),
                  )
              ),
              Container(
                  width: width*0.8,
                  child: Text('+237 676545675',textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 15,decoration: TextDecoration.underline,color: sSky,letterSpacing: 1),
                  )
              ),
              Container(
                  width: width*0.8,
                  child: Text('Please input the verification code below to verify your phone',textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 14,color: Colors.white,letterSpacing: 2),
                  )
              ),

              Column(
                children: [
                  textField(context,_otpController,"Verification Code"),

                  SizedBox(height: height*0.05,),



                  SizedBox(height: height*0.05,),
                  GestureDetector(
                    onTap: (){
                      navigationService.navigateTo(homeScreenRoute);
                    },
                    child: button(
                        height: height*0.08,
                        width: width*0.4,
                        txt: 'Verify'
                    ),
                  ),

                ],
              ),
              SizedBox(height: height*0.05,),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Did not Receive Code? ',
                        style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: (){
                          navigationService.navigateTo(loginScreenRoute);
                        },
                        child: Text(
                          'Resend Code',
                          style: TextStyle(fontSize: 15,color: sSky),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height: 3,
                    width: width*0.8,
                    color: Colors.white,
                  ),
                  SizedBox(height: height*0.03,),
                  Container(
                      width: width*0.85,
                      child: Text('By creating signing in you agree to our Terms of Service and Privacy Policy',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),))
                ],
              )











            ],
          ),
        ],
      ),
    );
  }
}
