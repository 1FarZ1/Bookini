import 'dart:developer';

import 'package:bookini/view_model/home/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/book_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .35,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                if (state.books[index].volumeInfo.imageLinks?.thumbnail !=
                    null) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 5.0, right: 10, bottom: 10),
                    child: BookCard(
                        book: state.books[index],
                  ));
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          log("error");

          return Text(state.errorMessage.toString());
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
