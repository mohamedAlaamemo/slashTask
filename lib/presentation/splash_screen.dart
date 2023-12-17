import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:slash_task/generated/assets.dart';
import 'package:slash_task/presentation/home_screen.dart';
import 'package:slash_task/resources/colorManager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Assets.imagesSplashPhoto,
      backgroundColor: ColorManager.primary,
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
