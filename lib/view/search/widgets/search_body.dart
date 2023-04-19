import 'package:bookini/core/consts.dart';
import 'package:bookini/view/search/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'search_list_view.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CustomSearchTextField(),
          const SizedBox(height: 20),
          const Text(
            "Search Results",
            style: Styles.textStyle18,
          ),
          const SizedBox(height: 20),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
