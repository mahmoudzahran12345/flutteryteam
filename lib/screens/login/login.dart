import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/App_Manager/colormanger.dart';
import 'package:w3schools/componets/App_Manager/fontmanger.dart';
import 'package:w3schools/componets/common_widgets/textFormField_widget.dart';

import '../../componets/common_widgets/custom_button_widget.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController username_Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(53.w),
          child: Column(
            children: [
              CustomTextFormFieldWidget(
                hintText: 'Username',
                controller: username_Controller,
                keyboardtype: TextInputType.text,
                suffixicon: const Icon(
                  Icons.person_outlined,
                ),
                onsave: (value) {},
                onvalidate: (value) {},
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButtonWidget(
                  width: 115.w, text: 'Sign in', icon: Icons.arrow_forward)
            ],
          ),
        ),
      ),
    );
  }
}
