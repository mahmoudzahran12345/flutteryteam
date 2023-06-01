import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/componets/App_Manager/assetsmanger.dart';
import 'package:w3schools/componets/App_Manager/colormanger.dart';
import 'package:w3schools/componets/App_Manager/fontmanger.dart';
import 'package:w3schools/screens/onboarding/widgets/onboarding_content.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
                // itemCount: ,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => const OnBoardingContent(
                      image: AssetImageManger.watchVideo,
                      title: 'All your materials in one place',
                      description:
                          'Easy access to your all class materials in many format such as PDF or MP4',
                    )),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 60.h,
              width: 60.w,
              child: ElevatedButton(
                onPressed: () {},
                
                child: Icon(Icons.arrow_forward_ios),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: ColorManger.chosenOne
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
