import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componets/App_Manager/assetsmanger.dart';
import '../../../componets/App_Manager/colormanger.dart';
import '../../../componets/App_Manager/textmanger.dart';
import '../../../componets/common_widgets/custom_button_widget.dart';
import '../../../componets/common_widgets/customimage.dart';
import '../../../componets/common_widgets/textFormField_widget.dart';

class DetailedInfoSecondStepWidget extends StatelessWidget {
  DetailedInfoSecondStepWidget({super.key});
  //for detailed info step
  final GlobalKey<FormFieldState> _key2 = GlobalKey();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ParentphoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Form(
              key: _key2,
              child: Column(
                children: [
                  // const Spacer(),
                  SizedBox(
                    height: 50.h,
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
                      controller: ParentphoneController,
                      keyboardtype: TextInputType.phone,
                      suffixicon: Icon(
                        Icons.phone_android,
                        color: ColorManger.chosenOne,
                      ),
                      onsave: (value) {
                        ParentphoneController.text = value!;
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
                          return 'Please enter a valid username';
                        }
                        return null;
                      }),

                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12.0.w),
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
