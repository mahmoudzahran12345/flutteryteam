import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:w3schools/componets/App_Manager/colormanger.dart';

class FontApp{
  static const double size250 = 250.0;
  static const double size20 = 20.0;
  static const double size25 = 25.0;
  static const double size30 = 30.0;

}


abstract class FontStyles{

  static TextStyle onBoardingTitleStyle30=GoogleFonts.openSans(
    fontSize: 30.sp,
    color: Colors.black,
    fontWeight: FontWeight.w900
  );
  static TextStyle onBoardingDescriptionStyle17=GoogleFonts.openSans(
    fontSize: 17.sp,
    color: Colors.black54,
    // fontWeight: FontWeight.w900
  );
  static TextStyle hinttextStyle15=GoogleFonts.openSans(
    fontSize: 15.sp,
    color: Colors.grey,
    // fontWeight: FontWeight.w900
  );
  static TextStyle buttonTextStyle16=GoogleFonts.openSans(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700
  );
  static TextStyle welcomeTextStyle42=GoogleFonts.dancingScript(
    fontSize: 42.sp,
    color: ColorManger.chosenOne,
    fontWeight: FontWeight.w700,
    letterSpacing: 6
  );
  static TextStyle defaultsmallTextStyle13=GoogleFonts.openSans(
    fontSize: 13.sp,
    color:Colors.black,
    // fontWeight: FontWeight.w700,
  
  );
}

abstract class Constant{
  static const int m1000 = 1000;
  static const double size550 = 550;
  static const int duration = 10000;
  static const int onBoardingNextDuration=500;
  static const int onBoardingDotsDuration=200;



}
