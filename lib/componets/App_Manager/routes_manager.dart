import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/scale_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:w3schools/screens/onboarding/onboarding_view.dart';
import 'package:w3schools/screens/splash/splashView.dart';

abstract class Routes {
  static const String SplashRoute = '/';
  static const String onboarding = 'onboardingView';
}

class AppRoutes {
  static Route? routeGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onboarding:
        return PageAnimationTransition(
            page: const OnBoardingView(),
            pageAnimationType: ScaleAnimationTransition());
      case Routes.SplashRoute:
        return PageAnimationTransition(
            page: const SplashView(),
            pageAnimationType: ScaleAnimationTransition());
      default:
        return null;
    }
  }
}
