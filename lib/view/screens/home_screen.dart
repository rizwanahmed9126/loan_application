import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/home_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var navigationService = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height*0.75,
            width: width,
            //color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage('assets/images/Mark.png')

                  ),
                  SizedBox(height: height*0.09,),

                  Text('Hello John Doe',style: GoogleFonts.montserrat(fontSize: 20),),
                  SizedBox(height: height*0.04,),
                  Text('Verify Account Now',style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold),),

                  SizedBox(height: height*0.09,),
                  Container(
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
                            color: sBlack,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(
                          child: Icon(Icons.person_outline,size: 35, color: Color(0xFFFBC392),),
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
                                  children: [
                                    Text('Verify your identity',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 15),),

                                    SizedBox(height: 5,),
                                    Text('Fill in our KYC form',style: GoogleFonts.montserrat(fontSize: 15),),


                                  ],
                                ),
                                Icon(Icons.check,color: Colors.green,)


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
              ),
                  SizedBox(height: height*0.04,),
                  Container(
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
                                  color: sBlack,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Center(
                                child: Text("\$",style: TextStyle(fontSize: 25,color: Color(0xFFFBC392)),)
                                //Icon(Icons.,size: 35, color: Color(0xFFFBC392),),
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
                                        children: [
                                          Text('Make initial deposit',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 15),),

                                          SizedBox(height: 5,),
                                          Text('Top up your account',style: GoogleFonts.montserrat(fontSize: 15),),


                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios_rounded,size: 16,)


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
                  ),

                ],
              ),
            ),
          ),
          Container(
            height: height*0.25,
            width: width,
            decoration: BoxDecoration(
              color: sBlack,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 5,
                  width: width*0.2,
                  color: Colors.grey,
                ),
                Text('Steps 1/2',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 17),),
                Text('Curabitur sodales cursus enim, id ultrices \nlacus scelerisque ac.',textAlign: TextAlign.center,style: GoogleFonts.montserrat(color: Colors.white,letterSpacing: 2,fontSize: 13),),

                GestureDetector(
                  onTap: (){
                    navigationService.navigateTo(identityScreenRoute);
                  },
                  child: button(
                      height: height*0.065,
                      width: width*0.7,txt: 'Start Now'
                  ),
                ),
                SizedBox(height: height*0.02,)
              ],
            ),
          )
        ],
      ),
    );
  }
}


