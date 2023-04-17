import 'package:bookini/view/common/book_card.dart';
import 'package:flutter/material.dart';

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
        Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width * .5,
          child: const BookCard(),
        ),
      ],
    );
  }
}
