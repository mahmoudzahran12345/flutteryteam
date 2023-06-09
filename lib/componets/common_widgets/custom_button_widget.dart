import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App_Manager/colormanger.dart';
import '../App_Manager/fontmanger.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {Key? key,
      required this.width,
      this.height = 44,
      this.iconSize = 20,
      this.text,
      this.icon,
      required this.function})
      : super(key: key);

  final double width;
  final double height;
  final double iconSize;

  final String? text;
  final IconData? icon;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: width,
        height: height,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text ?? '',
              style: FontStyles.buttonTextStyle16,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(icon, color: Colors.white, size: iconSize)
          ],
        ),
      ),
    );
  }
}
