import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/App_Manager/assetsmanger.dart';
import 'package:w3schools/componets/App_Manager/colormanger.dart';
import 'package:w3schools/componets/App_Manager/textmanger.dart';
import 'package:w3schools/componets/common_widgets/textFormField_widget.dart';

import '../../componets/App_Manager/constant.dart';
import '../../componets/common_widgets/customimage.dart';
import '../../componets/common_widgets/custom_button_widget.dart';
import '../../componets/common_widgets/customtext.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(53.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(color:ColorManger.textLogin,text: AppStringsEn.hello,size: 42, ),
              SizedBox(
                height: 30.h,
              ),

              CustomTextFormFieldWidget(
                hintText: AppStringsEn.username,
                controller:ConstantApp.username_Controller,
                keyboardtype: TextInputType.text,
                suffixicon:  Icon(
                  Icons.person_outlined,
                  color: ColorManger.iconLogin1,
                ),
                onsave: (value) {},
                onvalidate: (value) {
                  print("3");
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextFormFieldWidget(
                hintText: AppStringsEn.password,
                controller:ConstantApp.passwordController,
                keyboardtype: TextInputType.visiblePassword,
                suffixicon:  Icon(
                  Icons.lock_clock_outlined,
                  color: ColorManger.iconLogin2,
                ),
                onsave: (value) {},
                onvalidate: (value) {print("");},
              ),
              SizedBox(
                height: 10.h,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   CustomImageDecoration(image: AssetImageManger.aim,width: 18.0.w,height: 18.0.h,),
                  const Spacer(),
                  CustomText(color:ColorManger.textLogin2,text: AppStringsEn.forgotPass,size: 12, ),
                ],
              ),

              SizedBox(
                height: 30.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CustomButtonWidget(
                    width: 115.w, text: AppStringsEn.signUp, icon: Icons.arrow_forward,function: (){print("login");},),
              ),
              CustomImageDecoration(image: AssetImageManger.circle,width: 18.0.w,height: 18.0.h,),


            ],
          ),
        ),
      ),
    );
  }
}
