import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(AssetsData.logo)],
    );
  }
}
