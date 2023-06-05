import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/App_Manager/assetsmanger.dart';
import 'package:w3schools/componets/App_Manager/colormanger.dart';
import 'package:w3schools/componets/App_Manager/textmanger.dart';
import 'package:w3schools/componets/common_widgets/textFormField_widget.dart';
import '../../componets/App_Manager/fontmanger.dart';
import '../../componets/common_widgets/customimage.dart';
import '../../componets/common_widgets/custom_button_widget.dart';
class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final GlobalKey<FormFieldState> _keyLogin = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: 500.h,
              child: Stack(
                children: [
                  Form(
                    key: _keyLogin,
                    child: Column(
                      children: [
                        // const Spacer(),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          AppStringsEn.hello,
                          style: FontStyles.welcomeTextStyle42.copyWith(color: ColorManger.textLogin),
                        ),
                        Text(
                          AppStringsEn.loginMake,
                          textAlign: TextAlign.center,
                          style: FontStyles.welcomeTextStyle42
                              .copyWith(fontSize: 13.sp, letterSpacing: 0,color: ColorManger.textLogin),
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        CustomTextFormFieldWidget(
                            hintText: AppStringsEn.email,
                            controller: emailController,
                            keyboardtype: TextInputType.emailAddress,
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
                                return AppStringsEn.enterEmail;
                              }
                              return null;
                            }),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextFormFieldWidget(
                            hintText: AppStringsEn.password,
                            controller: passwordController,
                            keyboardtype: TextInputType.visiblePassword,
                            suffixicon: Icon(
                              Icons.lock,
                              color: ColorManger.chosenOne,
                            ),
                            onsave: (value) {
                              passwordController.text = value!;
                            },
                            onvalidate: (String? value) {
                              if (value!.isEmpty && value.length < 8) {
                                return AppStringsEn.enterPassword;
                              }
                              return null;
                            }),
                        Padding(
                          padding:  EdgeInsets.only(right: 55.0.w),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                   /* Navigator.of(context)
                                        .pushReplacementNamed(Routes.login);*/
                                  },
                                  child: Text(
                                    AppStringsEn.forgotPass,
                                    style: FontStyles.defaultsmallTextStyle13
                                        .copyWith(color: ColorManger.textLogin2),
                                  ))),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 55.0.w),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: CustomButtonWidget(
                                  function: () {},
                                  width: 115.w,
                                  text: AppStringsEn.signUp,
                                  icon: Icons.arrow_forward)),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  /* Navigator.of(context)
                                      .pushReplacementNamed(Routes.login);*/
                                },
                                child: Text(
                                  AppStringsEn.createAccount,
                                  style: FontStyles.defaultsmallTextStyle13
                                      .copyWith(color: ColorManger.textLogin2),
                                )),
                            TextButton(
                                onPressed: () {
                                  /* Navigator.of(context)
                                      .pushReplacementNamed(Routes.login);*/
                                },
                                child: Text(
                                  AppStringsEn.signUp2,
                                  style: FontStyles.defaultsmallTextStyle13
                                      .copyWith(color: ColorManger.textLogin,fontSize: 20),
                                )),

                          ],
                        ),




                      ],
                    ),
                  ),
                  Positioned(
                      left: 40.w,
                      top: 260.h,
                      child: const CustomImageDecoration(
                          image: AssetImageManger.aim)),
                  Positioned(
                      right: 70.w,
                      top: 0.h,
                      child: const CustomImageDecoration(
                        image: AssetImageManger.flower,
                      )),
                  Positioned(
                      right: 180.w,
                      top: 370.h,
                      child: const CustomImageDecoration(
                        image: AssetImageManger.circle,
                      )),
                  Positioned(
                      left: 75.w,
                      top: 50.h,
                      child: const CustomImageDecoration(
                          image: AssetImageManger.x)),
                  Positioned(
                      left: 310.w,
                      top: 50.h,
                      bottom: 5.h,
                      child: const CustomImageDecoration(
                          image: AssetImageManger.dot)),





                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
