import 'package:flutter/material.dart';

import '../../../core/consts.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required Animation<Offset> animation,
  }) : _animation = animation;

  final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (ctx, _) {
        return SlideTransition(
          position: _animation,
          child: const Text("World Of Books",
              textAlign: TextAlign.center, style: Styles.textStyle14),
        );
      },
      animation: _animation,
    );
  }
}
