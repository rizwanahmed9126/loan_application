import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';

Widget textField(context,TextEditingController controller,){
  final height=MediaQuery.of(context).size.height;
  final width=MediaQuery.of(context).size.width;
  return  Container(
    height: height*0.09,
    width: width * 0.78,

    decoration: BoxDecoration(
        color: Colors.white,
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

          hintText: 'Email or Phone',
          hintStyle: GoogleFonts.montserrat(

            color: Colors.black,
            fontSize: 18,
          ),

        ),
      ),
    ),
  );
}