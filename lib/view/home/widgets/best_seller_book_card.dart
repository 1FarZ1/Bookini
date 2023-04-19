import 'package:bookini/view/common/book_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/consts.dart';
import '../../../models/book/book.dart';

class BestSellerBookCard extends StatelessWidget {
  BestSellerBookCard({super.key, required book}) {
    _book = book;
  }
  late final Book _book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/detaills");
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            BookCard(imgUrl: _book.volumeInfo.imageLinks!.thumbnail as String),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * .25,
                    child: Text(
                      _book.volumeInfo.title as String,
                      overflow: TextOverflow.clip,
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    _book.volumeInfo.authors?.first ?? "no authoer",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      Row(
                        // Since The APi scammed me and it doesnt include average rating and rating count , i will make it static for now
                        children: const [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 1,
                          ),
                          Text("4.5"),
                          SizedBox(
                            width: 4,
                          ),
                          Text("(100)"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
