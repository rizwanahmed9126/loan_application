import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class SendPaymentScreen extends StatefulWidget {
  @override
  _SendPaymentScreenState createState() => _SendPaymentScreenState();
}

class _SendPaymentScreenState extends State<SendPaymentScreen> {
  var navigationService = locator<NavigationService>();
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _lastController = TextEditingController();

  bool hidePswd=true;

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
          Positioned(
              bottom: height*0.43,
              left: -35,

              child: Container(
                //height: 300,
                  child: Image.asset('assets/images/left_ellipse_1.png')
              )
          ),
          Positioned(
              bottom: 20,
              right: -height*0.035,

              child: Container(
                //height: 300,
                  child: Image.asset('assets/images/right_ellipse_5.png')
              )
          ),

          Padding(
            padding: const EdgeInsets.only(top: 35,left: 35,right: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back),


                    SizedBox(height: height*0.05,),
                    Text('Send payment',style: GoogleFonts.montserrat(fontSize: 23,letterSpacing: 2,fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.05,),
                    Container(
                        width: width*0.8,
                        child: Text('Please send 5000 XAF to the following number',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 15,letterSpacing: 2),
                        )
                    ),
                    //SizedBox(height: height*0.02,),
                    Container(
                      height: height*0.1,
                      width: width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('+237 128636325', style: GoogleFonts.montserrat(fontSize: 18,letterSpacing: 2)),
                        SizedBox(height: 5,),
                          Container(
                          height: 1,
                          width: width*0.5,
                          color: sBlack,
                        )
                            ],
                      ),
                    ),
                   // SizedBox(height: 10,),
                    Container(
                        width: width*0.8,
                        child: Text('Once completed, upload a screenshot as a proof of payment',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 15,letterSpacing: 2),
                        )
                    ),
                    // SizedBox(height: height*0.02,),

                  ],
                ),

                Icon(Icons.cloud_upload,size:100, color: Color(0xFFE0E1E0),),
                Container(
                  height: height*0.08,
                  width: width*0.45,
                  decoration: BoxDecoration(
                      color: sBlack,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text('Upload',style: TextStyle(fontSize: 19,color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 2),),
                  ),

                ),

                // Text(
                //   'Upload both sides of your identity document ',
                //   style: TextStyle(fontSize: 15,),
                // ),

                //SizedBox(height: 10,),
                // GestureDetector(
                //     onTap: (){
                //
                //     },
                //     child: Container(
                //       height: height*0.06,
                //       width: width*0.4,
                //       decoration: BoxDecoration(
                //           color: sBlack,
                //           borderRadius: BorderRadius.circular(12)
                //       ),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Icon(Icons.cloud_upload,color: Colors.white,size: 27,),
                //           SizedBox(width: 5,),
                //           Text('Upload',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.white),),
                //         ],
                //       ),
                //
                //     )
                //
                // ),
                //SizedBox(height: 10,),

                // Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text('passport_front.pdf'),
                //         Row(
                //           children: [
                //             Icon(Icons.done_all,color: Colors.green,),
                //             Text('added')
                //           ],
                //         )
                //       ],
                //     ),
                //     SizedBox(height: 5,),
                //     Container(
                //       height: 1,
                //       width: width*0.9,
                //       color: Colors.black,
                //     ),
                //   ],
                // ),
                //
                //
                // Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text('passport_front.pdf'),
                //         Row(
                //           children: [
                //             Icon(Icons.done_all,color: Colors.green,),
                //             Text('added')
                //           ],
                //         )
                //       ],
                //     ),
                //     SizedBox(height: 5,),
                //     Container(
                //       height: 1,
                //       width: width*0.9,
                //       color: Colors.black,
                //     ),
                //   ],
                // ),
                // //SizedBox(height: 10,),
                //
                // Container(
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Text('passport_front.pdf'),
                //           Row(
                //             children: [
                //               Icon(Icons.done_all,color: Colors.green,),
                //               Text('added')
                //             ],
                //           )
                //         ],
                //       ),
                //       SizedBox(height: 5,),
                //       Container(
                //         height: 1,
                //         width: width*0.9,
                //         color: Colors.black,
                //       ),
                //     ],
                //   ),
                // ),
                //


                GestureDetector(
                    onTap: (){
                      navigationService.navigateTo(pendingStatusScreenRoute);
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
          ),
        ],
      ),
    );
  }
}
