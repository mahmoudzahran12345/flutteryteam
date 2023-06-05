import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App_Manager/colormanger.dart';
import '../App_Manager/fontmanger.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.width,
    required this.text,
     this.icon,
    required this.function
  }) : super(key: key);
  

  final double width;
  final String text;
  final IconData? icon;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 44.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          colors: [
            ColorManger.buttonColorFirstPart,
            ColorManger.buttonColorSecondPart
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // stops: [0,0.2,0.5]
        ),
      ),
      child: InkWell(
        onTap:function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: FontStyles.buttonTextStyle16,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 5.w,
            ),
             Icon(icon, color: Colors.white, size: 20)
          ],
        ),
      ),
    );
  }
}
