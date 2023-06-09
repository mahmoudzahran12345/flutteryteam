import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/common_widgets/custom_button_widget.dart';

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
        // height: 60.h,
        // width: 60.w,
        child: CustomButtonWidget(
            width: 60.w,
            height: 44.h,
            icon: Icons.arrow_forward,
            iconSize: 25,
            function: () {
              controller.nextPage(
                  duration: const Duration(
                      milliseconds: Constant.onBoardingNextDuration),
                  curve: Curves.ease);
            }));
  }
}
