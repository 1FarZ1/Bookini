import 'package:flutter/material.dart';

import '../../../core/consts.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SizedBox(
          width: 2,
        ),
        Text(
          "4.5",
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        const Text("(100)"),
      ],
    );
  }
}
