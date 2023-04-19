import 'package:bookini/models/book/image_links.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 10, bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: AspectRatio(
            aspectRatio: 2.8 / 4,
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
