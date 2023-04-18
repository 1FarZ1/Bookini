import 'package:flutter/material.dart';

import '../../home/widgets/best_seller_book_card.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(right: 5, left: 5, bottom: 15),
            child: BestSellerBookCard(),
          );
        },
      ),
    );
  }
}
