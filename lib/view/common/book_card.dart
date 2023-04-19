// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/book/book.dart';

class BookCard extends StatelessWidget {
  BookCard({
    Key? key,
    required Book book,
  }) : super(key: key) {
    _book = book;
  }
  late final Book _book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          "/detaills",
          extra: _book,
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: AspectRatio(
            aspectRatio: 2.8 / 4,
            child: CachedNetworkImage(
              imageUrl: _book.volumeInfo.imageLinks?.thumbnail ?? "",
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
