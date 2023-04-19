// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../models/book/book.dart';
import '../../common/book_card.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .3,
      height: MediaQuery.of(context).size.height * .2,
      child: BookCard(
        book: book,
      ),
    );
  }
}
