import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/model/services/navigation_service.dart';
import 'package:loan/model/utils/routes.dart';
import 'package:loan/model/utils/service_locator.dart';
import 'package:loan/view/widgets/button.dart';
import 'package:loan/view/widgets/txt_field.dart';

class OccupationScreen extends StatefulWidget {
  @override
  _OccupationScreenState createState() => _OccupationScreenState();
}

class _OccupationScreenState extends State<OccupationScreen> {
  var navigationService = locator<NavigationService>();
  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();

  final TextEditingController _placeController = TextEditingController();



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
              bottom: height*0.1,
              left: -35,

              child: Container(
                //height: 300,
                  child: Image.asset('assets/images/left_ellipse_1.png')
              )
          ),
          Positioned(
              bottom: height*0.25,
              right: 0,

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
                    Text('Your occupation',style: GoogleFonts.montserrat(fontSize: 23,letterSpacing: 2,fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.05,),
                    Container(
                        width: width*0.8,
                        child: Text('Please tell us more about what you do!',textAlign: TextAlign.left, style: GoogleFonts.montserrat(fontSize: 15,letterSpacing: 2),
                        )
                    ),
                    SizedBox(height: 20),
                    txtField(context,_professionController,'Profession'),

                    SizedBox(height: 20),
                    txtField(context,_professionController,'Position'),

                    SizedBox(height: 20),
                    txtField(context,_companyController,'Company'),

                    SizedBox(height: 20),
                    txtField(context,_placeController,'Place of Work'),

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

                GestureDetector(
                    onTap: (){
                      navigationService.navigateTo(occupationScreenRoute);
                    },
                    child: Container(
                        height: height*0.07,
                        width: width,
                        decoration: BoxDecoration(
                            color: Color(0xFFE0E1E0),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(
                          child:
                          Text('NEXT',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.white),),
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
    height: height*0.09,
    width: width * 0.78,

    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
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