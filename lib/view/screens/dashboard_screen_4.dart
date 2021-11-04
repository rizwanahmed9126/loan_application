import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';
import 'package:getwidget/getwidget.dart';
class DashboardScreen4 extends StatefulWidget {
  @override
  _DashboardScreen4State createState() => _DashboardScreen4State();
}

class _DashboardScreen4State extends State<DashboardScreen4> {
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
                                  Text('Statistics', style: GoogleFonts.montserrat(fontSize: 22,fontWeight: FontWeight.bold),)

                                ],
                              )

                            ],
                          ),
                        ),
                        GestureDetector(
                            onTap: (){
                              navigationService.navigateTo(homeNotificationScreenRoute);
                            },
                            child: Icon(Icons.notifications)
                        ),
                      ],
                    ),

                    SizedBox(height: height*0.07,),

                    tile(context,'House Loan',Color(0xFFC4F0FD),
                      GFProgressBar(
                        percentage: 0.4,
                        lineHeight: 17,
                        alignment: MainAxisAlignment.spaceBetween,
                        // child: const Text('70%', textAlign: TextAlign.end,
                        //   style: TextStyle(fontSize: 18, color: Colors.white),
                        // ),
                        //leading  : Icon( Icons.sentiment_dissatisfied, color: Colors.red),
                        //trailing: Icon( Icons.sentiment_satisfied, color: Colors.green),
                        backgroundColor: Color(0xFF161620),
                        progressBarColor: Color(0xFFFBC392),
                      ),
                    ),

                    SizedBox(height: height*0.02,),
                    tile(context,'Car Loan',Colors.white,
                      GFProgressBar(
                        percentage: 0.7,
                        lineHeight: 17,
                        alignment: MainAxisAlignment.spaceBetween,
                        // child: const Text('70%', textAlign: TextAlign.end,
                        //   style: TextStyle(fontSize: 18, color: Colors.white),
                        // ),
                        //leading  : Icon( Icons.sentiment_dissatisfied, color: Colors.red),
                        //trailing: Icon( Icons.sentiment_satisfied, color: Colors.green),
                        backgroundColor: Color(0xFF161620),
                        progressBarColor: Color(0xFFFBC392),
                      ),
                    ),

                    SizedBox(height: height*0.02,),
                    tile(context,'House Loan',Colors.white,
                      GFProgressBar(
                        percentage: 1,
                        lineHeight: 17,
                        alignment: MainAxisAlignment.spaceBetween,
                        // child: const Text('70%', textAlign: TextAlign.end,
                        //   style: TextStyle(fontSize: 18, color: Colors.white),
                        // ),
                        //leading  : Icon( Icons.sentiment_dissatisfied, color: Colors.red),
                        //trailing: Icon( Icons.sentiment_satisfied, color: Colors.green),
                        backgroundColor: Color(0xFF161620),
                        progressBarColor: Color(0xFF74C59A),
                      ),
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

Widget tile(context,String title,Color color,Widget widget){
  final height=MediaQuery.of(context).size.height;
  final width=MediaQuery.of(context).size.width;
  return Container(
      height: height*0.2,
      width: width,
     // color: color,
      decoration: BoxDecoration(
        color: Color(0xFFE0E1E0),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Text('12,000 XAF/month',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            widget,
            SizedBox(height: 10,),
            Text('Paid 120,000 XAF of 200,00 XAF',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text('Start: 25/04/21',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text('End: 25/04/22',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
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

