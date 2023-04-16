import 'package:flutter/material.dart';

import 'best_seller_book_card.dart';
import 'home_body.dart';

class ListViewBooks extends StatelessWidget {
  const ListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return const BestSellerBookCard();
        },
      ),
    );
  }
}