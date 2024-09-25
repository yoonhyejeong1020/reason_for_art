import 'dart:async';

import 'package:flutter/material.dart';

import '../../di/di.dart';
import '../../utils/color_utils.dart';
import '../../utils/context_utils.dart';
import '../view_model/animation_view_model.dart';
import '../view_model/auth_view_model.dart';
import 'login_screen.dart';
import 'main_tab_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  final AnimationViewModel animationViewModel = DI().get<AnimationViewModel>();
  final AuthViewModel authViewModel = DI().get<AuthViewModel>();

  @override
  void initState() {
    super.initState();

    animationViewModel.initSplashAnimation(vsync: this, navigatorScreen: _navigatorScreen);
  }

  void updateScreen() => setState(() {});

  void _navigatorScreen() {
    Timer(Duration(milliseconds: 500), () {
      Navigator.pushReplacement(
        context,
        authViewModel.isLogin()
            ? MaterialPageRoute(builder: (context) => MainTabScreen())
            : MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    animationViewModel.splashAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorUtils.primaryColor,
                ColorUtils.splashBackgroundColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/reason_for_art_logo.png', width: 100, fit: BoxFit.cover),
              AnimatedBuilder(
                animation: animationViewModel.splashAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, animationViewModel.splashAnimation.value * ssH(context) / 2 + 10),
                    child: Text(
                      'Reason For Art',
                      style: textTheme(context).titleMedium,
                    ),
                  );
                },
              ),
              50.sbH,
            ],
          ),
        ),
      ),
    );
  }
}
