import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool hidePswd=true;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: sBlack,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          height: height*0.94,
          width: width*0.85,
          //color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Login',style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white,letterSpacing: 2),),
              Text('Curabitur sodales cursus enim, id ultrices lacus scelerique.',style: GoogleFonts.montserrat(fontSize: 15,color: Colors.white,letterSpacing: 2),),

              Column(
                children: [
                  textField(context,_emailController),

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

                  SizedBox(height: height*0.05,),
                  button(
                      height: height*0.08,
                      width: width*0.4,
                      onTap: (){

                      },
                      txt: 'Login'
                  ),

                ],
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Do not have an account? ',
                        style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      Text(
                        'Sign Up Now',
                        style: TextStyle(fontSize: 15,color: sSky),
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
                  Text('By creating signing in you agree to our Terms of Service and Privacy Policy',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)
                ],
              )











    ],
          ),
        ),
      ),
    );
  }
}
