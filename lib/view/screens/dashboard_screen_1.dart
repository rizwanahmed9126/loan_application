import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class DashboardScreen1 extends StatefulWidget {
  @override
  _DashboardScreen1State createState() => _DashboardScreen1State();
}

class _DashboardScreen1State extends State<DashboardScreen1> {
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
                          child: Row(
                            children: [
                              Container(

                                child: Image.asset('assets/images/Person.png',),
                              ),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Welcome back',),
                                  Text('John Doe',)
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
                      height: height*0.29,
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
                            Text('Pay within 12months',style: GoogleFonts.montserrat(color: Colors.white,),),
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

                  SizedBox(height: height*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      transition(height*0.1,Icons.arrow_forward,Color(0xFFFBC392),'Send'),
                      transition(height*0.1,Icons.arrow_downward,sSky,'Withdraw'),
                      transition(height*0.1,Icons.arrow_upward,Color(0xFFFCEAD9),'Deposit'),
                      transition(height*0.1,Icons.add_box,Color(0xFFE0E1E0),'Loan'),
                    ],
                  ),
                    SizedBox(height: height*0.03,),

                    Text('Recent', style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.bold),),


                    SizedBox(height: 20,),

                    gainLoss(context,Icons.arrow_drop_up_outlined,Colors.green,'House Loan'),
                    SizedBox(height: 20,),
                    gainLoss(context,Icons.arrow_drop_up_outlined,Colors.red,'withdraw')



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
