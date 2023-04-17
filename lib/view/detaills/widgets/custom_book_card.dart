import 'package:flutter/material.dart';

import '../../common/book_card.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width * .3,
      child: const BookCard(),
    );
  }
}
