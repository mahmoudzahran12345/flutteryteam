import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/App_Manager/assetsmanger.dart';
import 'package:w3schools/logical/AuthCubit/AuthCubit/auth_cubit.dart';

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
  TextEditingController phoneController = TextEditingController();

  //! dont forget to add new controllers for detailed info

// for basic info step
  final GlobalKey<FormFieldState> _key = GlobalKey();
  //for detailed info step
  final GlobalKey<FormFieldState> _key2 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          var authCubit = BlocProvider.of<AuthCubit>(context);
          List<Step> getSteps() => [
                Step(
                  isActive: authCubit.currentStep == 0,
                  title: const Text('Basic Info'),
                  content: BasicInfoFirstStepWidget(context),
                ),
                Step(
                  isActive: authCubit.currentStep >= 1,
                  title: const Text('Detailed Info'),
                  content: DetailedInfoSecondStepWidget(context),
                ),
              ];

          return Scaffold(
            body: SafeArea(
                child: Stepper(
              physics: const BouncingScrollPhysics(),
              type: StepperType.vertical,
              currentStep: authCubit.currentStep,
              steps: getSteps(),
              onStepContinue: () {
                if (authCubit.currentStep == getSteps().length - 1) {
                  null;
                } else {
                  authCubit.pressedOnContinuos();
                }
              },
              onStepCancel: () {
                if (authCubit.currentStep == 0) {
                  null;
                } else {
                  authCubit.pressedOnCancel();
                }
              },
              stepIconBuilder: (stepIndex, stepState) {
                return Container(
                  decoration: BoxDecoration(
                    color: authCubit.currentStep > stepIndex
                        ? Colors.green
                        : Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    authCubit.currentStep > stepIndex
                        ? Icons.done
                        : Icons.do_not_disturb,
                    color: Colors.white,
                  ),
                );
              },
            )),
          );
        },
      ),
    );
  }

  Center DetailedInfoSecondStepWidget(BuildContext context) {
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
                      controller: phoneController,
                      keyboardtype: TextInputType.name,
                      suffixicon: Icon(
                        Icons.phone_android,
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

                  //! Dad phone number
                  CustomTextFormFieldWidget(
                      hintText: AppStringsEn.phone,
                      controller: phoneController,
                      keyboardtype: TextInputType.name,
                      suffixicon: Icon(
                        Icons.phone_android,
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
                  // Padding(
                  //   padding: EdgeInsets.only(right: 45.0.w),
                  //   child: Align(
                  //       alignment: Alignment.centerRight,
                  //       child: TextButton(
                  //           onPressed: () {
                  //             Navigator.of(context)
                  //                 .pushReplacementNamed(Routes.login);
                  //           },
                  //           child: Text(
                  //             AppStringsEn.haveAccount,
                  //             style: FontStyles.defaultsmallTextStyle13
                  //                 .copyWith(color: ColorManger.chosenOne),
                  //           ))),
                  // ),
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
            // Positioned(
            //     left: -1.w,
            //     top: 100.h,
            //     child:
            //         const CustomImageDecoration(image: AssetImageManger.aim)),
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

  Center BasicInfoFirstStepWidget(BuildContext context) {
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
                    'Hello',
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
                      keyboardtype: TextInputType.name,
                      suffixicon: Icon(
                        Icons.phone_android,
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

                  //! Dad phone number
                  CustomTextFormFieldWidget(
                      hintText: AppStringsEn.phone,
                      controller: phoneController,
                      keyboardtype: TextInputType.name,
                      suffixicon: Icon(
                        Icons.phone_android,
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
                  // SizedBox(
                  //   height: 15.h,
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 50.0.w),
                  //   child: Align(
                  //       alignment: Alignment.centerRight,
                  //       child: CustomButtonWidget(
                  //           function: () {},
                  //           width: 115.w,
                  //           text: 'Sign Up',
                  //           icon: Icons.arrow_forward)),
                  // ),
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
