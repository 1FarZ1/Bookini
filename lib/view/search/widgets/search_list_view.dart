import 'dart:developer';

import 'package:bookini/view_model/search/search_books/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/widgets/best_seller_book_card.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<SearchBooksCubit, SearchBooksState>(
        builder: (context, state) {
          if (state is SearchBooksSuccess) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                log(state.books[index].volumeInfo.imageLinks?.toJson() ??
                    " no photo sorry");
                try {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 5, left: 5, bottom: 15),
                    child: BestSellerBookCard(book: state.books[index]),
                  );
                } catch (e) {
                  print("error was found fares");
                }
              },
            );
          } else if (state is SearchBooksFailure) {
            return Center(
              child: Text(state.message),
            );
          } else if (state is SearchBooksLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Center(
              child: Text(
                "Type The Name Of Book to Show It",
              ),
            );
          }
        },
      ),
    );
  }
}
