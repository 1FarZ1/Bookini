import 'package:bookini/repository/home_repo.dart';
import 'package:bookini/repository/home_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/failure.dart';
import '../../../models/book/book.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._homeRepoImpl) : super(SimilarBooksInitial());

  HomeRepoImpl _homeRepoImpl;
  Future<void> fetchBooks() async {
    emit(SimilarBooksLoading());

    await _homeRepoImpl.fetchBestSellerBooks().then((eitherObject) {
      eitherObject.fold(
        (failure) =>
            emit(SimilarBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(SimilarBooksSucess(books: books)),
      );
    });
  }
}
