import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
          Positioned(
              bottom: height*0.33,
              left: -35,

              child: Container(
                //height: 300,
                  child: Image.asset('assets/images/left_ellipse_1.png')
              )
          ),
          // Positioned(
          //     bottom: 20,
          //     right: -height*0.035,
          //
          //     child: Container(
          //       //height: 300,
          //         child: Image.asset('assets/images/right_ellipse_5.png')
          //     )
          // ),

          Padding(
            padding: const EdgeInsets.only(top: 35,left: 35,right: 35,bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back),


                    SizedBox(height: height*0.05,),
                    Text('Payment status',style: GoogleFonts.montserrat(fontSize: 23,letterSpacing: 2,fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.05,),
                    // Container(
                    //     width: width*0.8,
                    //     child: Text('Please submit any files that can be used to validate your identity',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 15,letterSpacing: 2),
                    //     )
                    // ),
                    // SizedBox(height: height*0.02,),

                  ],
                ),

                Container(
                  height: height*0.4,
                  width: width,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: height*0.1,
                         // width: width*0.2,
                          child: //Image.asset('assets/images/cloud_upload.png')
                          Text('SUCCESS',style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold,letterSpacing: 2),)
                      ),
                      Container(
                        //height: height*0.06,
                        //width: width*0.45,
                        // decoration: BoxDecoration(
                        //     color: sBlack,
                        //     borderRadius: BorderRadius.circular(12)
                        // ),
                        child: Image.asset('assets/images/Icon material-done-all.png'),

                      ),
                    ],
                  ),
                ),



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
                      navigationService.navigateTo(sendPaymentScreenRoute);
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
