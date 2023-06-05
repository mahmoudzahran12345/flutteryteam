import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componets/App_Manager/colormanger.dart';
import '../../../componets/App_Manager/fontmanger.dart';

class OnBoardingNextButtonWidget extends StatelessWidget {
  const OnBoardingNextButtonWidget({
    Key? key,
    required this.controller,
    required this.isLastPage,
  }) : super(key: key);
  final PageController controller;
  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 60.w,
      child: ElevatedButton(
        onPressed: () {
          !isLastPage
              ? controller.nextPage(
                  duration: const Duration(
                      milliseconds: Constant.onBoardingNextDuration),
                  curve: Curves.ease)
              : controller.previousPage(
                  duration: const Duration(
                      milliseconds: Constant.onBoardingNextDuration),
                  curve: Curves.ease);
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),


        ),
        child: Icon(isLastPage ? Icons.arrow_back : Icons.arrow_forward),
      ),
    );
  }
}
