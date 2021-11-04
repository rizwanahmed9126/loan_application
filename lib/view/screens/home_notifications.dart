import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class HomeNotificationsScreen extends StatefulWidget {
  @override
  _HomeNotificationsScreenState createState() => _HomeNotificationsScreenState();
}

class _HomeNotificationsScreenState extends State<HomeNotificationsScreen> {
  var navigationService = locator<NavigationService>();


  bool _checked=false;
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
          // Positioned(
          //     bottom: height*0.2,
          //     right: 0,
          //
          //     child: Container(
          //       //height: 300,
          //         child: Image.asset('assets/images/right_ellipse_5.png')
          //     )
          // ),

          Padding(
            padding: const EdgeInsets.only(top: 40,left: 25,right: 25,bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child:
                          Row(
                            children: [
                              Container(

                                child: Icon(Icons.arrow_back),
                              ),
                              SizedBox(width: height*0.03,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Notifications', style: GoogleFonts.montserrat(fontSize: 22,fontWeight: FontWeight.bold),)

                                ],
                              )

                            ],
                          ),
                        ),
                        Icon(Icons.notifications),
                      ],
                    ),

                    SizedBox(height: height*0.07,),

                    tile(context,'House Loan Request',Color(0xFFC4F0FD)),

                    Container(
                      height: 1,
                      width: width,
                      color: Colors.grey,
                    ),
                    tile(context,'Initial Deposit',Colors.white),

                    Container(
                      height: 1,
                      width: width,
                      color: Colors.grey,
                    ),
                    tile(context,'Account Verification Completed',Colors.white),

                    Container(
                      height: 1,
                      width: width,
                      color: Colors.grey,
                    ),


                    //SizedBox(height: height*0.02,),


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

Widget tile(context,String title,Color color){
  final height=MediaQuery.of(context).size.height;
  final width=MediaQuery.of(context).size.width;
  return Container(
      height: height*0.16,
      width: width,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('your loan request has beign accepted and your account has being successfully credited',style: TextStyle(),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Feb 29-2:00 PM',style: TextStyle(color: Colors.grey),)
              ],
            )
          ],
        ),
      )
  );
}

Widget transition(double height,IconData icon, Color color,String txt){
  return  Column(
    children: [
      Container(
        height: height,
        width: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12)
        ),

        child: Center(
          child: Icon(icon,size: 40,),
        ),
      ),
      SizedBox(height: 5,),
      Text(txt,style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.bold),)
    ],
  );
}

