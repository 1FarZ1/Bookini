import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'sliding_text.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    initAnim();
    Future.delayed(
        Duration(seconds: AppConsts.kTranstionDuration.inSeconds + 4), () {
      GoRouter.of(context).push('/home');
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(animation: _animation),
      ],
    );
  }

  void initAnim() {
    _animationController = AnimationController(
      vsync: this,
      duration: AppConsts.kTranstionDuration,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(_animationController);
    _animationController.forward();
    _animation.addListener(() {
      setState(() {});
    });
  }
}
