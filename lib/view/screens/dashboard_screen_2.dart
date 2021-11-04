import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class DashboardScreen2 extends StatefulWidget {
  @override
  _DashboardScreen2State createState() => _DashboardScreen2State();
}

class _DashboardScreen2State extends State<DashboardScreen2> {
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
          Positioned(
              bottom: height*0.2,
              right: 0,

              child: Container(
                //height: 300,
                  child: Image.asset('assets/images/right_ellipse_5.png')
              )
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30,right: 30,bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  Text('Wallets', style: GoogleFonts.montserrat(fontSize: 22,fontWeight: FontWeight.bold),)

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

                    SizedBox(height: height*0.03,),
                    Container(
                      height: height*0.25,
                      width: width,

                      decoration: BoxDecoration(
                          color: Color(0xFF161620),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('LOAN',style: GoogleFonts.montserrat(color: Colors.white,),),
                            Text('200,500.10 XAF',style: GoogleFonts.montserrat(fontSize: 33,color: sSky,)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Current Balance-12000 XAF',style: GoogleFonts.montserrat(color: Colors.white,)),
                                Text('Limit- 100k',style: GoogleFonts.montserrat(color: Colors.white,))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: height*0.02,),

                    Container(
                      height: height*0.25,
                      width: width,

                      decoration: BoxDecoration(
                          color: Color(0xFFFBC392),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18,right: 18,top: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('CURRENT BALANCE',style: GoogleFonts.montserrat(),),
                            Text('200,500.10 XAF',style: GoogleFonts.montserrat(fontSize: 33,color: sBlack,)),
                            //SizedBox(height: height*0.02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Checkbox(
                                        side: BorderSide(color: Colors.black),
                                        activeColor:Colors.black ,
                                        checkColor: Colors.white,
                                        focusColor: Colors.black,

                                        value: _checked, onChanged: (val) {
                                      setState(() {
                                        _checked = val!;
                                      });
                                    }
                                    ),
                                    Text('Auto Pay ',style: GoogleFonts.montserrat(fontSize: 12),),

                                  ],
                                ),
                                Text('20,00 XAF/month',style: GoogleFonts.montserrat())
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: height*0.02,),

                    Text('Auto Pay is activated, so the monthly amount will be automatically deducated every month to pay back your loan or you can pay manuallly below ',
                      style: GoogleFonts.montserrat(fontSize: 16,),),


                    SizedBox(height: 10,),

                    Center(
                      child: GestureDetector(
                          onTap: (){
                            navigationService.navigateTo(referencesScreenRoute);
                          },
                          child: Container(
                              height: height*0.07,
                              width: width/2,
                              decoration: BoxDecoration(
                                  color: sBlack,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Center(
                                child:
                                Text('Pay Now',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.white),),
                              )

                          )

                      ),
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

Widget gainLoss(context,IconData icon,Color iconColor,String txt){
  final height=MediaQuery.of(context).size.height;
  final width=MediaQuery.of(context).size.width;
  return Container(
    //color: Colors.red,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: height*0.07,
              width: width*0.13,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFCEAD9),
                // borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child:
                Icon(icon,size: 55, color: iconColor,),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height: height*0.07,
              width: width*0.6,
              //color: Colors.red,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(txt,style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 15),),

                          //SizedBox(height: 5,),
                          Text('Feb 29-2:00 PM',textAlign:TextAlign.left, style: GoogleFonts.montserrat(fontSize: 13,color: Colors.grey),),


                        ],
                      ),
                      SizedBox(width: 5,),
                      Text('+ 23000 XAF', style: GoogleFonts.montserrat(fontSize: 13,fontWeight: FontWeight.bold),)
                      //Icon(Icons.arrow_forward_ios_rounded,size: 16,)


                    ],),

                  Container(
                    height: 1,
                    width: width*0.6,
                    color: Colors.grey,
                  )


                ],
              ),
            ),
          ],
        ),



      ],
    ),
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
