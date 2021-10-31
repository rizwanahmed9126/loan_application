import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan/model/models/constants/constants.dart';

Widget button({double? height,double? width,String? txt,}){

  return  Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: sSky,
        borderRadius: BorderRadius.circular(12)
    ),
    child: Center(
      child: Text(txt!,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,letterSpacing: 2),),
    ),

  );
}