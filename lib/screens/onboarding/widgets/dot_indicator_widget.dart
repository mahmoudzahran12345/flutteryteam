import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/App_Manager/colormanger.dart';
import 'package:w3schools/componets/App_Manager/fontmanger.dart';

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    Key? key,
    this.isCurrentPage = false,
  }) : super(key: key);

  final bool isCurrentPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: Constant.onBoardingDotsDuration),
        width: isCurrentPage ? 5.w : 10.w,
        height: isCurrentPage ? 15.h : 4.h,
        decoration:  BoxDecoration(
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(10),
          color: isCurrentPage ? ColorManger.buttonColorFirstPart : Colors.black,
        ),
      ),
    );
  }
}
