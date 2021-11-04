import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class PendingStatusScreen extends StatefulWidget {
  @override
  _PendingStatusScreenState createState() => _PendingStatusScreenState();
}

class _PendingStatusScreenState extends State<PendingStatusScreen> {
  var navigationService = locator<NavigationService>();


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: sBlack,
      body: Stack(
        fit: StackFit.loose,
        children: [
          // Positioned(
          //     bottom: height*0.43,
          //     left: -35,
          //
          //     child: Container(
          //       //height: 300,
          //         child: Image.asset('assets/images/left_ellipse_1.png')
          //     )
          // ),
          Positioned(
              bottom: height*0.2,
              right: 0,

              child: Container(
                //height: 300,
                  child: Image.asset('assets/images/right_ellipse_5.png')
              )
          ),

          Padding(
            padding: const EdgeInsets.only(top: 35,left: 35,right: 35,bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back),


                    SizedBox(height: height*0.05,),
                    Text('Payment status',style: GoogleFonts.montserrat(fontSize: 23,letterSpacing: 2,fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.05,),
                    Container(
                        width: width*0.8,
                        child: Text('We will soon verify your payment and fully activate your account',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 15,letterSpacing: 2),
                        )
                    ),
                    //SizedBox(height: height*0.02,),
                    // Container(
                    //   height: height*0.1,
                    //   width: width,
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text('+237 128636325', style: GoogleFonts.montserrat(fontSize: 18,letterSpacing: 2)),
                    //       SizedBox(height: 5,),
                    //       Container(
                    //         height: 1,
                    //         width: width*0.5,
                    //         color: sBlack,
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(height: 10,),
                    // Container(
                    //     width: width*0.8,
                    //     child: Text('Once completed, upload a screenshot as a proof of payment',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 15,letterSpacing: 2),
                    //     )
                    // ),
                    // SizedBox(height: height*0.02,),

                  ],
                ),
                Text('PENDING',style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold,letterSpacing: 2),),

                Icon(Icons.lock_clock_rounded,size:100, color: Color(0xFFE0E1E0),),




                Column(
                  children: [

                    Column(
                      children: [
                        Text('REQUEST REVIEW',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 2,),),
                      Container(
                        height: 1,
                        width: width*0.6,
                        color: sBlack,
                      )
                      ],
                    ),
                    SizedBox(height: height*0.04,),

                    GestureDetector(
                        onTap: (){
                          navigationService.navigateTo(dashboardRoute);
                        },
                        child: Container(
                            height: height*0.07,
                            width: width,
                            decoration: BoxDecoration(
                                color: sBlack,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Center(
                              child:
                              Text('DONE',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.white),),
                            )

                        )

                    ),
                  ],
                ),














              ],
            ),
          ),
        ],
      ),
    );
  }
}
