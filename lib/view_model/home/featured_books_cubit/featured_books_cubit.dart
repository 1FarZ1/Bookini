import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/book/book.dart';
import '../../../repository/home_repo_impl.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepoImpl) : super(FeaturedBooksInitial());
  final HomeRepoImpl _homeRepoImpl;

  Future<void> fetchData() async {
    emit(FeaturedBooksLoading());
    log("Loading");
    var result = await _homeRepoImpl.fetchFeaturedBooks();
    result.fold(
        (failure) =>
            emit(FeaturedBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(FeaturedBooksSucess(books: books)));
  }
}
