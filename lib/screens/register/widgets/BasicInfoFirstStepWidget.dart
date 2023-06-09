import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componets/App_Manager/assetsmanger.dart';
import '../../../componets/App_Manager/colormanger.dart';
import '../../../componets/App_Manager/fontmanger.dart';
import '../../../componets/App_Manager/routes_manager.dart';
import '../../../componets/App_Manager/textmanger.dart';
import '../../../componets/common_widgets/customimage.dart';
import '../../../componets/common_widgets/textFormField_widget.dart';

class BasicInfoFirstStepWidget extends StatelessWidget {
  BasicInfoFirstStepWidget({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  //for Basic info step
  final GlobalKey<FormFieldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Form(
              key: _key,
              child: Column(
                children: [
                  // const Spacer(),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    AppStringsEn.hello,
                    style: FontStyles.welcomeTextStyle42,
                  ),
                  Text(
                    'Register and make your study easier!',
                    textAlign: TextAlign.center,
                    style: FontStyles.hinttextStyle15
                        .copyWith(fontSize: 13.sp, letterSpacing: 0),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  CustomTextFormFieldWidget(
                      hintText: AppStringsEn.username,
                      controller: usernameController,
                      keyboardtype: TextInputType.name,
                      suffixicon: Icon(
                        Icons.person_outlined,
                        color: ColorManger.chosenOne,
                      ),
                      onsave: (value) {
                        usernameController.text = value!;
                      },
                      onvalidate: (String? value) {
                        if (value!.isEmpty && value.length <= 2) {
                          return 'Please enter a valid username';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormFieldWidget(
                      hintText: AppStringsEn.email,
                      controller: emailController,
                      keyboardtype: TextInputType.name,
                      suffixicon: Icon(
                        Icons.email_outlined,
                        color: ColorManger.chosenOne,
                      ),
                      onsave: (value) {
                        emailController.text = value!;
                      },
                      onvalidate: (String? value) {
                        if (value!.isEmpty &&
                            value.length <= 2 &&
                            !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormFieldWidget(
                      hintText: AppStringsEn.phone,
                      controller: phoneController,
                      keyboardtype: TextInputType.phone,
                      suffixicon: Icon(
                        Icons.phone_android,
                        color: ColorManger.chosenOne,
                      ),
                      onsave: (value) {
                        phoneController.text = value!;
                      },
                      onvalidate: (String? value) {
                        if (value!.isEmpty && value.length < 11) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 20.h,
                  ),

                  CustomTextFormFieldWidget(
                      hintText: AppStringsEn.password,
                      controller: passwordController,
                      keyboardtype: TextInputType.text,
                      suffixicon: Icon(
                        Icons.lock,
                        color: ColorManger.chosenOne,
                      ),
                      onsave: (value) {
                        passwordController.text = value!;
                      },
                      onvalidate: (String? value) {
                        if (value!.isEmpty && value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      }),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0.w),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(Routes.login);
                            },
                            child: Text(
                              AppStringsEn.haveAccount,
                              style: FontStyles.defaultsmallTextStyle13
                                  .copyWith(color: ColorManger.chosenOne),
                            ))),
                  ),

                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            Positioned(
                left: 10.w,
                top: 100.h,
                child:
                    const CustomImageDecoration(image: AssetImageManger.aim)),
            Positioned(
                left: 80.w,
                top: 20.h,
                child: const CustomImageDecoration(image: AssetImageManger.x)),
            Positioned(
                right: 40.w,
                top: 7.h,
                child: const CustomImageDecoration(
                  image: AssetImageManger.flower,
                )),
            Positioned(
                left: 40.w,
                bottom: 7.h,
                child: const CustomImageDecoration(
                  image: AssetImageManger.x,
                )),
          ],
        ),
      ),
    );
  }
}
