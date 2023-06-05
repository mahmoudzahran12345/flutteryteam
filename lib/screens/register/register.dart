import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/App_Manager/assetsmanger.dart';

import '../../componets/App_Manager/colormanger.dart';
import '../../componets/App_Manager/fontmanger.dart';
import '../../componets/App_Manager/routes_manager.dart';
import '../../componets/App_Manager/textmanger.dart';
import '../../componets/common_widgets/custom_button_widget.dart';
import '../../componets/common_widgets/customimage.dart';
import '../../componets/common_widgets/textFormField_widget.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final GlobalKey<FormFieldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                        'Hello',
                        style: FontStyles.welcomeTextStyle42,
                      ),
                      Text(
                        'Register and make your study easier!',
                        textAlign: TextAlign.center,
                        style: FontStyles.welcomeTextStyle42
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
                              return 'Please enter a valid username';
                            }
                            return null;
                          }),
                      Align(
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
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 55.0.w),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: CustomButtonWidget(
                                function: () {},
                                width: 115.w,
                                text: 'Sign Up',
                                icon: Icons.arrow_forward)),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 20.w,
                    top: 100.h,
                    child: const CustomImageDecoration(
                        image: AssetImageManger.aim)),
                Positioned(
                    right: 40.w,
                    top: 7.h,
                    child: const CustomImageDecoration(
                      image: AssetImageManger.flower,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
