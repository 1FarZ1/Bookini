import 'package:bookini/models/book/image_links.dart';
import 'package:flutter/material.dart';

import '../../core/consts.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.imgUrl,
  });
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        margin: const EdgeInsets.only(bottom: 25, top: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
