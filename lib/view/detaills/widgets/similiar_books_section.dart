
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/detaills/similar_books_cubit/similar_books_cubit.dart';
import 'custom_book_card.dart';

class SimiliarBooksSection extends StatelessWidget {
  const SimiliarBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSucess) {
            return ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CustomBookCard(
                        book: state.books[index]),
                  );
                });
          } else if (state is SimilarBooksFailure) {
            return Center(
              child:
                  Text("Something Went Wrong${state.errorMessage}"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
