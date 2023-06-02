import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/animations/scale_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:w3schools/screens/login/login.dart';
import 'package:w3schools/screens/onboarding/onboarding_view.dart';
import 'package:w3schools/screens/splash/splashView.dart';


abstract class Routes {
  static const String splash= '/';
  static const String onboarding = 'onboardingView';
  static const String login= 'loginView';

  
}

class AppRoutes {
  static Route? routeGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onboarding:
        return PageAnimationTransition(
            page: const OnBoardingView(),
            pageAnimationType: ScaleAnimationTransition());
      case Routes.splash:
        return PageAnimationTransition(
            page: const SplashView(),
            pageAnimationType: ScaleAnimationTransition());
      case Routes.login:
        return PageAnimationTransition(
            page:  LoginView(),
            pageAnimationType: BottomToTopTransition());
      default:
        return null;
    }
  }
}
