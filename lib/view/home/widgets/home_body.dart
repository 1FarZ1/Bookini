import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';

import 'custom_list_view.dart';
import 'list_view_books.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Featured",
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20),
          CustomListView(),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20),
          ListViewBooks()
        ],
      ),
    );
  }
}
