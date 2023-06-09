import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/App_Manager/routes_manager.dart';
import '../../../componets/App_Manager/textmanger.dart';
import '../../../componets/common_widgets/custom_button_widget.dart';

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, right: 10.w),
      child: Align(
        alignment: Alignment.topRight,
        child: SizedBox(
          width: 80.w,
          height: 30.h,
          child:  CustomButtonWidget(
              width: 100.w, text: AppStringsEn.skip,icon: Icons.arrow_forward,function: (){
                Navigator.of(context).pushReplacementNamed(Routes.splash);
              }, )

        ),
      ),
    );
  }
}
