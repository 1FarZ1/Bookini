import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';

import 'action_button.dart';
import 'custom_book_card.dart';
import 'custom_title.dart';

class DetaillsBody extends StatelessWidget {
  const DetaillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        const CustomBookCard(),
        const SizedBox(height: 32),
        Text(
          "The Book of the Dead",
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        // text widget?
        const Opacity(
          opacity: .7,
          child: Text("JK Rowling", style: Styles.textStyle14),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star, color: Colors.yellow),
            const SizedBox(
              width: 1,
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
        ),
        const SizedBox(height: 32),
        const ActionButton(),
        const SizedBox(height: 32),
        const CustomTitle(),
      ],
    );
  }
}
