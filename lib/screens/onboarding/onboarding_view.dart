import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w3schools/models/onBoarding_model.dart';
import 'package:w3schools/screens/onboarding/widgets/onboarding_content.dart';

import '../../componets/App_Manager/routes_manager.dart';
import 'widgets/dot_indicator_widget.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/skip_button_widget.dart';



class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _pageController;
  int _pageIndex = 0;
  bool isLastPage = false;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          const SkipButtonWidget(),
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                  if (_pageIndex == OnBoardingModel.dummy_data.length - 1) {
                    Navigator.of(context).pushReplacementNamed(Routes.splash);
                  }
                },
                itemCount: OnBoardingModel.dummy_data.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => OnBoardingContent(
                      image: OnBoardingModel.dummy_data[index].image,
                      title: OnBoardingModel.dummy_data[index].title,
                      description:
                          OnBoardingModel.dummy_data[index].description,
                    )),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w, bottom: 15.h, left: 20.w),
            child: Row(
              children: [
                ...List.generate(
                    OnBoardingModel.dummy_data.length,
                    (index) => DotIndicatorWidget(
                          isCurrentPage: index == _pageIndex,
                        )),
                const Spacer(),
                OnBoardingNextButtonWidget(
                  controller: _pageController,
                  isLastPage: isLastPage ? true : false,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
