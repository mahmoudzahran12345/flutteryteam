import 'package:flutter/material.dart';
import 'package:w3schools/componets/App_Manager/routes_manager.dart';

import 'widgets/slidingImageWidget.dart';
import 'widgets/slidingTextwidget.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>  with TickerProviderStateMixin{

  late AnimationController textanimationController;
  late Animation<Offset> textslidingAnimation;
  late AnimationController imageanimationController;
  late Animation<Offset> imageslidingAnimation;
@override
  void initState() {
    super.initState();
    _slidingImageAnimation();
    _slidingTextAnimation();

    _NavigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    textanimationController.dispose();
    imageanimationController.dispose();
  }

  void _slidingTextAnimation() {
    
    textanimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    textslidingAnimation =
        Tween<Offset>(begin: const Offset(-2, 0), end: Offset.zero)
            .animate(textanimationController);
    textanimationController.forward();
  }

  void _slidingImageAnimation() {
    imageanimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    imageslidingAnimation =
        Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
            .animate(imageanimationController);
    imageanimationController.forward();
  }

  Future<void> _NavigateToHomeView() {
    return Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.of(context).pushReplacementNamed(Routes.login);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //these widgets are in lib\features\splash\presentation\views\widgets\splash
        slidingImageWidget(imageslidingAnimation: imageslidingAnimation),
        slidingTextWidget(textslidingAnimation: textslidingAnimation)
      ],
    ),
    );
  }
}