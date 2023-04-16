import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';

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
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(_animationController);
    _animationController.forward();
    _animation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedBuilder(
          builder: (ctx, _) {
            return SlideTransition(
              position: _animation,
              child: const Text("World Of Books",
                  textAlign: TextAlign.center, style: Styles.textStyle14),
            );
          },
          animation: _animation,
        ),
      ],
    );
  }
}
