import 'package:bookini/core/consts.dart';
import 'package:bookini/view_model/detaills/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../models/book/book.dart';
import '../../common/custom_app_bar.dart';
import 'action_button.dart';
import 'custom_book_card.dart';
import 'custom_title.dart';
import 'rating_box.dart';
import 'similiar_books_section.dart';

class DetaillsBody extends StatelessWidget {
  const DetaillsBody({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    //TODO: Seperate The Ui into Sections
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBar(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                    ),
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                  ),
                  action: IconButton(
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                CustomBookCard(
                  book: book,
                ),
                const SizedBox(height: 32),
                Text(
                  book.volumeInfo.title ?? "No Title",
                  textAlign: TextAlign.center,
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Opacity(
                  opacity: .7,
                  child: Text(book.volumeInfo.authors?.first ?? "No authors",
                      style: Styles.textStyle14),
                ),
                const SizedBox(height: 16),
                //TODO: since idk why api doesnt give me rating , this will remain static
                const RatingBox(),
                const SizedBox(height: 32),
                const ActionButton(),
                const Expanded(child: SizedBox(height: 32)),
                const CustomTitle(),
                const SizedBox(height: 8),
                const SimiliarBooksSection(),
                const SizedBox(height: 32),
                // create elevated button in flutter for me
              ],
            ),
          ),
        )
      ],
    );
  }
}
