import 'package:flutter/cupertino.dart';

class AnimationViewModel extends ChangeNotifier {
  late AnimationController splashAnimationController;
  late AnimationController loadingAnimationController;

  late Animation<double> splashAnimation;
  late Animation<Alignment> topAlignmentAnimation;
  late Animation<Alignment> bottomAlignmentAnimation;

  void initLoadingAnimation({required TickerProvider vsync}) {
    loadingAnimationController = AnimationController(vsync: vsync, duration: Duration(seconds: 8))..repeat();
    topAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight), weight: 1),
      TweenSequenceItem<Alignment>(tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight), weight: 1),
      TweenSequenceItem<Alignment>(tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft), weight: 1),
      TweenSequenceItem<Alignment>(tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft), weight: 1),
    ]).animate(loadingAnimationController);

    bottomAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft), weight: 1),
      TweenSequenceItem<Alignment>(tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft), weight: 1),
      TweenSequenceItem<Alignment>(tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight), weight: 1),
      TweenSequenceItem<Alignment>(tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight), weight: 1),
    ]).animate(loadingAnimationController);
  }

  void initSplashAnimation({required TickerProvider vsync, required void Function() navigatorScreen}) {
    splashAnimationController = AnimationController(vsync: vsync, duration: Duration(seconds: 2))..forward();
    splashAnimation = Tween<double>(begin: 1, end: 0).animate(CurvedAnimation(parent: splashAnimationController, curve: Curves.easeInOut));
    splashAnimationController.addStatusListener((status) => status == AnimationStatus.completed ? navigatorScreen() : null);
  }
}