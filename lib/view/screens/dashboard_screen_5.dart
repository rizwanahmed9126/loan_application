import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class DashboardScreen5 extends StatefulWidget {
  @override
  _DashboardScreen5State createState() => _DashboardScreen5State();
}

class _DashboardScreen5State extends State<DashboardScreen5> {
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
                                  Text('User Settings', style: GoogleFonts.montserrat(fontSize: 22,fontWeight: FontWeight.bold),)

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

                   Center(
                     child: Container(
                       height: height*0.2,
                       width: width*0.6,
                       //color: Colors.black,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                             height: height*0.2,
                             width: width*0.36,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                 image: AssetImage(
                                   'assets/images/Person.png',

                                 ),
                                 fit: BoxFit.fill
                               )
                             ),



                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                               child: Text('Change Image',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                           )
                         ],
                       ),
                     ),
                   ),

                    SizedBox(height: height*0.05,),
                    Column(

                      children: [
                        edit(context,'First Name:','John'),
                        SizedBox(height: height*0.03,),
                        edit(context,'Last Name:','Doe'),
                        SizedBox(height: height*0.03,),
                        edit(context,'Email:','abc@gmail.com'),
                        SizedBox(height: height*0.03,),
                        edit(context,'Password:','.........'),
                        SizedBox(height: height*0.03,),
                        edit(context,'Phone:','+237 37474374'),

                        SizedBox(height: height*0.05,),
                        Center(
                          child: GestureDetector(
                              onTap: (){
                                navigationService.navigateTo(requestLoanScreenRoute);
                              },
                              child: Container(
                                  height: height*0.06,
                                  width: width*0.4,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFE0E1E0),
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Center(
                                    child:
                                    Text('Update',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 2,),),
                                  )

                              ),

                          ),
                        ),

                        SizedBox(height: height*0.04,),
                        Text('Occupation',style: GoogleFonts.montserrat(fontSize: 22,),)
                      ],
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

Widget edit(context,String title,String txt){
  final height=MediaQuery.of(context).size.height;
  final width=MediaQuery.of(context).size.width;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,style: TextStyle(fontSize: 16)),
      SizedBox(width: 5,),
      Column(
        children: [
          Text(txt,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          Container(
            height: 1,
            width: width*0.5,
            color: Colors.black,
          ),

        ],
      ),
      SizedBox(width: 5,),
      Icon(Icons.edit_rounded)
    ],
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

