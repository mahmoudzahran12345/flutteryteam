import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App_Manager/fontmanger.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    Key? key,
    required this.hintText,
    // this.isPhoneNumber = false,
    required this.controller,
    this.suffixicon,
    this.textInputAction = TextInputAction.next,
    required this.keyboardtype,
    required this.onsave,
    required this.onvalidate,
  }) : super(key: key);
  final String hintText;
  // final bool isPhoneNumber;
  final TextEditingController controller;
  final Widget? suffixicon;
  final TextInputAction textInputAction;
  final TextInputType keyboardtype;
  final FormFieldSetter<String> onsave;
  final FormFieldValidator<String> onvalidate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270.w,
      height: 44.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.blue,
              spreadRadius: -5,
              blurRadius: 12,
            )
          ]),
      child: Padding(
        padding: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 19.w, right: 5.w),
        child: TextFormField(
          controller: controller,
          textInputAction: textInputAction,
          onSaved: onsave,
          validator: onvalidate,
          keyboardType: keyboardtype,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: FontStyles.hinttextStyle15,
              suffixIcon: suffixicon,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
