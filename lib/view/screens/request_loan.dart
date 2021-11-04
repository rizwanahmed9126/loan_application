import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class RequestLoanScreen extends StatefulWidget {
  @override
  _RequestLoanScreenState createState() => _RequestLoanScreenState();
}

class _RequestLoanScreenState extends State<RequestLoanScreen> {
  var navigationService = locator<NavigationService>();
  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();

  final TextEditingController _placeController = TextEditingController();

  final items=['Item 1','Item 2','Item 3','Item 4','Item 5',];
  String? value;
  DropdownMenuItem<String> buildMenuItem(String item)=> DropdownMenuItem(
    value: item,
    child: Text(item,style: GoogleFonts.montserrat(

      color: Colors.black,
      fontSize: 18,
    ),),
  );


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
          //     bottom: -height*0.06,
          //     left: 0,
          //
          //     child: Container(
          //       //height: 300,
          //         child: Image.asset('assets/images/left_ellipse_1.png')
          //     )
          // ),
          // Positioned(
          //     top: height*0.05,
          //     right: -width*0.08,
          //
          //     child: Container(
          //       //height: 300,
          //         child: Image.asset('assets/images/right_ellipse_5.png')
          //     )
          // ),

          Padding(
            padding: const EdgeInsets.only(top: 35,left: 35,right: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  Text('Notifications', style: GoogleFonts.montserrat(fontSize: 22,fontWeight: FontWeight.bold),)

                                ],
                              )

                            ],
                          ),
                        ),
                      //  Icon(Icons.notifications),
                      ],
                    ),
                    SizedBox(height: height*0.1,),
                    Container(
                        width: width*0.8,
                        child: Text('Amount',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.bold,color: Colors.grey),
                        )
                    ),
                    SizedBox(height: 10),

                    txtField(context,_professionController,'Profession'),

                    SizedBox(height: 10),
                    Container(
                        width: width*0.8,
                        child: Text('PERIOD',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.bold,color: Colors.grey),
                        )
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: height*0.07,
                      width: width * 0.78,
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(
                          color: Color(0xFFE0E1E0),
                          border: Border.all(color: Color(0xFFE0E1E0)),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text('Position',style: GoogleFonts.montserrat(

                            color: Colors.black,
                            fontSize: 18,
                          )),
                          isExpanded: true,
                          icon: Icon(Icons.keyboard_arrow_down),
                          value: value,
                          items: items.map(buildMenuItem).toList(),
                          onChanged: (value)=> setState(()=>this.value=value),
                        ),
                      ),
                    ),
                    //txtField(context,_professionController,'Position'),

                    SizedBox(height: 10),

                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rate',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.bold,color: Colors.grey),
                        ),
                        SizedBox(width: width*0.13,),
                        Text('Monthly Payment',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.bold,color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: height*0.07,
                          width: width * 0.2,

                          decoration: BoxDecoration(
                              color: Color(0xFFE0E1E0),
                              border: Border.all(color: Color(0xFFE0E1E0)),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: TextFormField(
                              controller: _companyController,
                              cursorColor: sBlack,
                              decoration: InputDecoration(

                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20,),
                                // suffixIcon:Icon(
                                //   Icons.clear,
                                //   color: Colors.black,
                                // ),

                                hintText: '13%',
                                hintStyle: GoogleFonts.montserrat(

                                  color: Colors.black,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width*0.05,),
                        Container(
                          height: height*0.07,
                          width: width*0.55,

                          decoration: BoxDecoration(
                              color: Color(0xFFE0E1E0),
                              border: Border.all(color: Color(0xFFE0E1E0)),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: TextFormField(
                              controller: _companyController,
                              cursorColor: sBlack,
                              decoration: InputDecoration(

                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20,),
                                // suffixIcon:Icon(
                                //   Icons.clear,
                                //   color: Colors.black,
                                // ),

                                hintText: '13%',
                                hintStyle: GoogleFonts.montserrat(

                                  color: Colors.black,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //
                    //     Column(
                    //       children: [
                    //         Container(
                    //             width: width*0.8,
                    //             child: Text('Amount',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.bold,color: Colors.grey),
                    //             )
                    //         ),
                    //         Container(
                    //           height: height*0.07,
                    //           width: width * 0.2,
                    //
                    //           decoration: BoxDecoration(
                    //               color: Color(0xFFE0E1E0),
                    //               border: Border.all(color: Color(0xFFE0E1E0)),
                    //               borderRadius: BorderRadius.circular(12)
                    //           ),
                    //           child: Center(
                    //             child: TextFormField(
                    //               controller: _companyController,
                    //               cursorColor: sBlack,
                    //               decoration: InputDecoration(
                    //
                    //                 border: InputBorder.none,
                    //                 contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20,),
                    //                 // suffixIcon:Icon(
                    //                 //   Icons.clear,
                    //                 //   color: Colors.black,
                    //                 // ),
                    //
                    //                 hintText: '13%',
                    //                 hintStyle: GoogleFonts.montserrat(
                    //
                    //                   color: Colors.black,
                    //                   fontSize: 18,
                    //                 ),
                    //
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //
                    //       ],
                    //     ),
                    //     Column(
                    //       children: [
                    //         Container(
                    //             width: width*0.8,
                    //             child: Text('Amount',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.bold,color: Colors.grey),
                    //             )
                    //         ),
                    //         Container(
                    //           height: height*0.07,
                    //           width: width * 0.2,
                    //
                    //           decoration: BoxDecoration(
                    //               color: Color(0xFFE0E1E0),
                    //               border: Border.all(color: Color(0xFFE0E1E0)),
                    //               borderRadius: BorderRadius.circular(12)
                    //           ),
                    //           child: Center(
                    //             child: TextFormField(
                    //               controller: _companyController,
                    //               cursorColor: sBlack,
                    //               decoration: InputDecoration(
                    //
                    //                 border: InputBorder.none,
                    //                 contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20,),
                    //                 // suffixIcon:Icon(
                    //                 //   Icons.clear,
                    //                 //   color: Colors.black,
                    //                 // ),
                    //
                    //                 hintText: '13%',
                    //                 hintStyle: GoogleFonts.montserrat(
                    //
                    //                   color: Colors.black,
                    //                   fontSize: 18,
                    //                 ),
                    //
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //
                    //       ],
                    //     )
                    //
                    //
                    //
                    //
                    //
                    //
                    //   ],
                    // ),









                    SizedBox(height: 20),
                    Container(
                        width: width*0.8,
                        child: Text('Title',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.bold,color: Colors.grey),
                        )
                    ),
                    SizedBox(height: 20),
                    txtField(context,_companyController,'House Loan'),

                    // SizedBox(height: 20),
                    // txtField(context,_placeController,'Place of Work'),

                    //SizedBox(height: 5,),
                    // SizedBox(height: height*0.02,),

                  ],
                ),
                SizedBox(height: height*0.05),
                // Column(
                //   children: [
                // txtField(context,_emailController,'First Name'),
                //
                // //SizedBox(height: 10),
                // txtField(context,_emailController,'Last Name'),
                //
                // txtField(context,_emailController,'First Name'),
                //
                // //SizedBox(height: 10),
                // txtField(context,_emailController,'Last Name'),
                //
                // //SizedBox(height: 5,),

                // GestureDetector(
                //     onTap: (){
                //       //navigationService.navigateTo(occupationScreenRoute);
                //     },
                //     child: Center(
                //       child:
                //       Text('SKIP',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 2,),),
                //     )
                //
                // ),

                GestureDetector(
                    onTap: (){
                      navigationService.navigateTo(initialPaymentScreenRoute);
                    },
                    child: Container(
                        height: height*0.07,
                        width: width,
                        decoration: BoxDecoration(
                            color:sBlack,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(
                          child:
                          Text('Request Now',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.white),),
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

Widget txtField(context,TextEditingController controller,String hinttxt){
  final height=MediaQuery.of(context).size.height;
  final width=MediaQuery.of(context).size.width;
  return  Container(
    height: height*0.07,
    width: width * 0.78,

    decoration: BoxDecoration(
        color: Color(0xFFE0E1E0),
        border: Border.all(color: Color(0xFFE0E1E0)),
        borderRadius: BorderRadius.circular(12)
    ),
    child: Center(
      child: TextFormField(
        controller: controller,
        cursorColor: sBlack,
        decoration: InputDecoration(

          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20,),
          // suffixIcon:Icon(
          //   Icons.clear,
          //   color: Colors.black,
          // ),

          hintText: hinttxt,
          hintStyle: GoogleFonts.montserrat(

            color: Colors.black,
            fontSize: 18,
          ),

        ),
      ),
    ),
  );
}