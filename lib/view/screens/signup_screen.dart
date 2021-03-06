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

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  var navigationService = locator<NavigationService>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool hidePswd=true;
  bool _checked=false;

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

          Container(
            //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
            margin: EdgeInsets.symmetric(vertical: 90,horizontal: 0),
            //height: height*0.94,
            //width: width*0.85,
            decoration: BoxDecoration(
              //color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/images/Path 32.png',),
                    fit: BoxFit.cover
                )
            ),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: height*0.02,),
              Text('Sign Up',style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white,letterSpacing: 2),),
              //SizedBox(height: height*0.05,),
              Container(
                  width: width*0.8,
                  child: Text('Curabitur sodales cursus enim, id ultrices lacus scelerique.',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 15,color: Colors.white,letterSpacing: 2),)),

              Column(
                children: [
                  textField(context,_emailController,'Email or Phone'),

                  SizedBox(height: height*0.05,),
                  Container(
                    height: height*0.09,
                    width: width * 0.78,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: _passwordController,
                        cursorColor: sBlack,
                        obscureText: hidePswd,
                        decoration: InputDecoration(

                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25,),
                          suffixIcon:GestureDetector(
                              onTap: (){

                                setState(() {
                                  hidePswd=!hidePswd;
                                });
                              },
                              child: Icon(hidePswd?Icons.visibility_off:Icons.visibility,color: sBlack,)
                          ),


                          hintText: 'Password',
                          hintStyle: GoogleFonts.montserrat(

                            color: Colors.black,
                            fontSize: 18,
                          ),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.02,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          side: BorderSide(color: Colors.white),
                        activeColor:Color(0xFFFCD3C4) ,
                          checkColor: Colors.black,
                          focusColor: Colors.white,

                          value: _checked, onChanged: (val) {
                    setState(() {
                      _checked = val!;
                    });
                  }
                  ),
                      Text('Accept our ',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 12),),
                      Text('Terms of service ',style: GoogleFonts.montserrat(color: sSky,fontSize: 12)),
                      Text('and ',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 12)),
                      Text('privacy policy',style: GoogleFonts.montserrat(color: sSky,fontSize: 12))

                    ],
                  ),

                  SizedBox(height: height*0.05,),
                  GestureDetector(
                    onTap: (){
                      navigationService.navigateTo(otpScreenRoute);
                    },
                    child: button(
                        height: height*0.08,
                        width: width*0.4,
                        txt: 'Sign Up'
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
                        'Already have an account? ',
                        style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: (){
                          navigationService.navigateTo(loginScreenRoute);
                        },
                        child: Text(
                          'Log In Now',
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
