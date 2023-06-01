import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:w3schools/componets/textmanger.dart';


import '../componets/assetsmanger.dart';
import '../componets/colormanger.dart';
import '../componets/fontmanger.dart';
import '../componets/paddingmanger.dart';
import 'home.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManger.body,
        appBar: AppBar(
          backgroundColor: ColorManger.body,
          elevation: 0,
          title: Center(
            child: DefaultTextStyle(
              style:   TextStyle(
                  fontSize: FontApp.size30, color: ColorManger.widget
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(AppStrings.addressApp),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,

              ),
            ),
          ) ,
        ),
        body: AnimatedSplashScreen(
          splash:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:    [
                Lottie.asset(AssetImageManger.animation,
                    fit: BoxFit.cover,
                    height: FontApp.size250),
                const SizedBox(height: Padding1.padding100),
                Padding(
                  padding: const EdgeInsets.only(
                      right: Padding1.padding35,
                  ),
                  child: DefaultTextStyle(
                    style:   TextStyle(
                        fontSize: FontApp.size25,
                        color: ColorManger.widget
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText(AppStrings.best),
                      ],
                      repeatForever: true,
                      pause: const Duration(milliseconds: Constant.m1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                  ),
                )
              ],
            ),
          ),
          nextScreen:   const HomePage(),
          splashIconSize: Constant.size550,
          duration: Constant.duration,
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType:PageTransitionType.rightToLeftWithFade ,
          backgroundColor: ColorManger.body,
          animationDuration: const Duration(seconds: 1),

        )

    );
  }
}
