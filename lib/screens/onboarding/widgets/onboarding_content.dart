import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../componets/App_Manager/fontmanger.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(image),
          const Spacer(),
          Text(
           title ,
            style: FontStyles.onBoardingTitleStyle30,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
           description,
            style: FontStyles.onBoardingDescriptionStyle17,
            textAlign: TextAlign.center,
          ),
          const Spacer()
        ],
      ),
    );
  }
}
